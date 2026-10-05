#import "nelson_help.typ": *

= netCDF

== Functions

- #nlink(<netcdf:nccreate>)[nccreate]: Create a variable in a netCDF file.
- #nlink(<netcdf:ncdisp>)[ncdisp]: Display a readable summary of a netCDF data source.
- #nlink(<netcdf:ncinfo>)[ncinfo]: Return information about a netCDF data source.
- #nlink(<netcdf:ncread>)[ncread]: Read data from a variable in a netCDF file.
- #nlink(<netcdf:ncreadatt>)[ncreadatt]: Read an attribute from a netCDF file or variable.
- #nlink(<netcdf:ncwrite>)[ncwrite]: Write data to a variable in a netCDF file.
- #nlink(<netcdf:ncwriteatt>)[ncwriteatt]: Write an attribute to a netCDF file or variable.
- #nlink(<netcdf:ncwriteschema>)[ncwriteschema]: Add schema definitions to a netCDF file.
- #nlink(<netcdf:netcdf>)[netcdf]: Low-level NetCDF package interface.
- #nlink(<netcdf:netcdf_abort>)[netcdf.abort]: Revert recent definitions and close a netCDF file.
- #nlink(<netcdf:netcdf_close>)[netcdf.close]: Close a netCDF file.
- #nlink(<netcdf:netcdf_copyAtt>)[netcdf.copyAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_create>)[netcdf.create]: Create a new netCDF dataset.
- #nlink(<netcdf:netcdf_defDim>)[netcdf.defDim]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_defGrp>)[netcdf.defGrp]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_defVarChunking>)[netcdf.defVarChunking]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_defVarDeflate>)[netcdf.defVarDeflate]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_defVarFill>)[netcdf.defVarFill]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_defVarFletcher32>)[netcdf.defVarFletcher32]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_defVlen>)[netcdf.defVlen]: Work with netCDF user-defined variable length types.
- #nlink(<netcdf:netcdf_delAtt>)[netcdf.delAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_endDef>)[netcdf.endDef]: End netCDF define mode.
- #nlink(<netcdf:netcdf_getAtt>)[netcdf.getAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_getChunkCache>)[netcdf.getChunkCache]: Return default chunk cache settings for the netCDF library.
- #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant]: Return the numeric value of a named netCDF constant.
- #nlink(<netcdf:netcdf_getConstantNames>)[netcdf.getConstantNames]: Return names of constants known by the netCDF module.
- #nlink(<netcdf:netcdf_getVar>)[netcdf.getVar]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_inq>)[netcdf.inq]: Return information about an open netCDF file.
- #nlink(<netcdf:netcdf_inqAtt>)[netcdf.inqAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_inqAttID>)[netcdf.inqAttID]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_inqAttName>)[netcdf.inqAttName]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_inqDim>)[netcdf.inqDim]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_inqDimID>)[netcdf.inqDimID]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_inqDimIDs>)[netcdf.inqDimIDs]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_inqFormat>)[netcdf.inqFormat]: Determine the format of an open netCDF file.
- #nlink(<netcdf:netcdf_inqGrpName>)[netcdf.inqGrpName]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_inqGrpNameFull>)[netcdf.inqGrpNameFull]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_inqGrpParent>)[netcdf.inqGrpParent]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_inqGrps>)[netcdf.inqGrps]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_inqLibVers>)[netcdf.inqLibVers]: Return netCDF C library version information.
- #nlink(<netcdf:netcdf_inqNcid>)[netcdf.inqNcid]: Work with netCDF groups.
- #nlink(<netcdf:netcdf_inqUnlimDims>)[netcdf.inqUnlimDims]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_inqUserType>)[netcdf.inqUserType]: Work with netCDF user-defined variable length types.
- #nlink(<netcdf:netcdf_inqVar>)[netcdf.inqVar]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_inqVarChunking>)[netcdf.inqVarChunking]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_inqVarDeflate>)[netcdf.inqVarDeflate]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_inqVarFill>)[netcdf.inqVarFill]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_inqVarFletcher32>)[netcdf.inqVarFletcher32]: Configure or inspect netCDF-4 variable storage options.
- #nlink(<netcdf:netcdf_inqVarID>)[netcdf.inqVarID]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_inqVarIDs>)[netcdf.inqVarIDs]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_inqVlen>)[netcdf.inqVlen]: Work with netCDF user-defined variable length types.
- #nlink(<netcdf:netcdf_open>)[netcdf.open]: Open a netCDF data source.
- #nlink(<netcdf:netcdf_putAtt>)[netcdf.putAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_putVar>)[netcdf.putVar]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_reDef>)[netcdf.reDef]: Put an open netCDF file into define mode.
- #nlink(<netcdf:netcdf_renameAtt>)[netcdf.renameAtt]: Work with netCDF attributes.
- #nlink(<netcdf:netcdf_renameDim>)[netcdf.renameDim]: Work with netCDF dimensions.
- #nlink(<netcdf:netcdf_renameVar>)[netcdf.renameVar]: Work with netCDF variables.
- #nlink(<netcdf:netcdf_setChunkCache>)[netcdf.setChunkCache]: Set default chunk cache settings for the netCDF library.
- #nlink(<netcdf:netcdf_setDefaultFormat>)[netcdf.setDefaultFormat]: Change the default file format used by netCDF create calls.
- #nlink(<netcdf:netcdf_setFill>)[netcdf.setFill]: Set netCDF fill mode.
- #nlink(<netcdf:netcdf_sync>)[netcdf.sync]: Synchronize a netCDF file to disk.


#nested[
#pagebreak(weak: true)
#include "nccreate.typ"
#pagebreak(weak: true)
#include "ncdisp.typ"
#pagebreak(weak: true)
#include "ncinfo.typ"
#pagebreak(weak: true)
#include "ncread.typ"
#pagebreak(weak: true)
#include "ncreadatt.typ"
#pagebreak(weak: true)
#include "ncwrite.typ"
#pagebreak(weak: true)
#include "ncwriteatt.typ"
#pagebreak(weak: true)
#include "ncwriteschema.typ"
#pagebreak(weak: true)
#include "netcdf.typ"
#pagebreak(weak: true)
#include "netcdf_abort.typ"
#pagebreak(weak: true)
#include "netcdf_close.typ"
#pagebreak(weak: true)
#include "netcdf_copyAtt.typ"
#pagebreak(weak: true)
#include "netcdf_create.typ"
#pagebreak(weak: true)
#include "netcdf_defDim.typ"
#pagebreak(weak: true)
#include "netcdf_defGrp.typ"
#pagebreak(weak: true)
#include "netcdf_defVar.typ"
#pagebreak(weak: true)
#include "netcdf_defVarChunking.typ"
#pagebreak(weak: true)
#include "netcdf_defVarDeflate.typ"
#pagebreak(weak: true)
#include "netcdf_defVarFill.typ"
#pagebreak(weak: true)
#include "netcdf_defVarFletcher32.typ"
#pagebreak(weak: true)
#include "netcdf_defVlen.typ"
#pagebreak(weak: true)
#include "netcdf_delAtt.typ"
#pagebreak(weak: true)
#include "netcdf_endDef.typ"
#pagebreak(weak: true)
#include "netcdf_getAtt.typ"
#pagebreak(weak: true)
#include "netcdf_getChunkCache.typ"
#pagebreak(weak: true)
#include "netcdf_getConstant.typ"
#pagebreak(weak: true)
#include "netcdf_getConstantNames.typ"
#pagebreak(weak: true)
#include "netcdf_getVar.typ"
#pagebreak(weak: true)
#include "netcdf_inq.typ"
#pagebreak(weak: true)
#include "netcdf_inqAtt.typ"
#pagebreak(weak: true)
#include "netcdf_inqAttID.typ"
#pagebreak(weak: true)
#include "netcdf_inqAttName.typ"
#pagebreak(weak: true)
#include "netcdf_inqDim.typ"
#pagebreak(weak: true)
#include "netcdf_inqDimID.typ"
#pagebreak(weak: true)
#include "netcdf_inqDimIDs.typ"
#pagebreak(weak: true)
#include "netcdf_inqFormat.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpName.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpNameFull.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpParent.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrps.typ"
#pagebreak(weak: true)
#include "netcdf_inqLibVers.typ"
#pagebreak(weak: true)
#include "netcdf_inqNcid.typ"
#pagebreak(weak: true)
#include "netcdf_inqUnlimDims.typ"
#pagebreak(weak: true)
#include "netcdf_inqUserType.typ"
#pagebreak(weak: true)
#include "netcdf_inqVar.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarChunking.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarDeflate.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarFill.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarFletcher32.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarID.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarIDs.typ"
#pagebreak(weak: true)
#include "netcdf_inqVlen.typ"
#pagebreak(weak: true)
#include "netcdf_open.typ"
#pagebreak(weak: true)
#include "netcdf_putAtt.typ"
#pagebreak(weak: true)
#include "netcdf_putVar.typ"
#pagebreak(weak: true)
#include "netcdf_reDef.typ"
#pagebreak(weak: true)
#include "netcdf_renameAtt.typ"
#pagebreak(weak: true)
#include "netcdf_renameDim.typ"
#pagebreak(weak: true)
#include "netcdf_renameVar.typ"
#pagebreak(weak: true)
#include "netcdf_setChunkCache.typ"
#pagebreak(weak: true)
#include "netcdf_setDefaultFormat.typ"
#pagebreak(weak: true)
#include "netcdf_setFill.typ"
#pagebreak(weak: true)
#include "netcdf_sync.typ"
]
