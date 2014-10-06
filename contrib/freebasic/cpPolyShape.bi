#pragma once

extern "C"

declare function cpPolyShapeAlloc() as cpPolyShape ptr
declare function cpPolyShapeInit(byval poly as cpPolyShape ptr, byval body as cpBody ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpPolyShape ptr
declare function cpPolyShapeInitRaw(byval poly as cpPolyShape ptr, byval body as cpBody ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpPolyShape ptr
declare function cpPolyShapeNew(byval body as cpBody ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpShape ptr
declare function cpPolyShapeNewRaw(byval body as cpBody ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpShape ptr
declare function cpBoxShapeInit(byval poly as cpPolyShape ptr, byval body as cpBody ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpPolyShape ptr
declare function cpBoxShapeInit2(byval poly as cpPolyShape ptr, byval body as cpBody ptr, byval box as cpBB, byval radius as cpFloat) as cpPolyShape ptr
declare function cpBoxShapeNew(byval body as cpBody ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpShape ptr
declare function cpBoxShapeNew2(byval body as cpBody ptr, byval box as cpBB, byval radius as cpFloat) as cpShape ptr
declare function cpPolyShapeGetCount(byval shape as const cpShape ptr) as long
declare function cpPolyShapeGetVert(byval shape as const cpShape ptr, byval index as long) as cpVect
declare function cpPolyShapeGetRadius(byval shape as const cpShape ptr) as cpFloat

end extern
