using ArchGDAL

AG = ArchGDAL
 #  out = AG.registerdrivers() do
       AG.read("world.tif") do dataset
           band = AG.getband(dataset, bandnr)
           w, h = AG.width(band), AG.height(band)
           # scale, off = AG.getscale(band), AG.getoffset(band)
           na = AG.getnodatavalue(band)
           mat = convert(Matrix{T}, AG.read(band))
           gt = AG.getgeotransform(dataset)
           dx, dy = gt[2], -gt[end]
           x0 = gt[1] + dx/2
           x1 = x0 + (w-1) * dx
           y1 = gt[4] - dy/2
           y0 = y1 - (h-1)*dy

           proj4 = strip(AG.toPROJ4(AG.importWKT(AG.getproj(dataset))))
           (x0:dx:x1, y0:dy:y1, mat, proj4) # x-range, y-range, values, projection
       end
 #  end
