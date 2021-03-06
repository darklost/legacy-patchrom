.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$Adapter2D;,
        Landroid/renderscript/Allocation$Adapter1D;
    }
.end annotation


# static fields
.field private static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mType:Landroid/renderscript/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 237
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 238
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V
    .locals 0
    .parameter "id"
    .parameter "rs"
    .parameter "t"

    .prologue
    .line 38
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 39
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 40
    iput-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 41
    return-void
.end method

.method public static createBitmapRef(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 5
    .parameter "rs"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 308
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;

    move-result-object v2

    .line 310
    .local v2, t:Landroid/renderscript/Type;
    invoke-virtual {v2}, Landroid/renderscript/Type;->getID()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 311
    .local v1, id:I
    if-nez v1, :cond_0

    .line 312
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Load failed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :cond_0
    new-instance v0, Landroid/renderscript/Allocation;

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 316
    .local v0, a:Landroid/renderscript/Allocation;
    iput-object p1, v0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 317
    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .locals 4
    .parameter "rs"
    .parameter "b"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 295
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;

    move-result-object v1

    .line 297
    .local v1, t:Landroid/renderscript/Type;
    iget v2, p2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v2, p3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(IZLandroid/graphics/Bitmap;)I

    move-result v0

    .line 298
    .local v0, id:I
    if-nez v0, :cond_0

    .line 299
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Load failed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_0
    new-instance v2, Landroid/renderscript/Allocation;

    invoke-direct {v2, v0, p0, v1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v2
.end method

.method static createFromBitmapBoxed(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "rs"
    .parameter "b"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 324
    iget v1, p2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v1, p3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmapBoxed(IZLandroid/graphics/Bitmap;)I

    move-result v0

    .line 325
    .local v0, id:I
    if-nez v0, :cond_0

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Load failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_0
    new-instance v1, Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .locals 8
    .parameter "rs"
    .parameter "res"
    .parameter "id"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 334
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v4, value:Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    .line 340
    move-object v0, v3

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v2

    .line 341
    .local v2, asset:I
    iget v5, p3, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v5, p4, v2}, Landroid/renderscript/RenderScript;->nAllocationCreateFromAssetStream(IZI)I

    move-result v1

    .line 344
    .local v1, allocationId:I
    if-nez v1, :cond_2

    .line 345
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Load failed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1           #allocationId:I
    .end local v2           #asset:I
    .end local v4           #value:Landroid/util/TypedValue;
    :catch_0
    move-exception v5

    .line 351
    if-eqz v3, :cond_0

    .line 353
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v5, v7

    .line 360
    :cond_1
    :goto_1
    return-object v5

    .line 347
    .restart local v1       #allocationId:I
    .restart local v2       #asset:I
    .restart local v4       #value:Landroid/util/TypedValue;
    :cond_2
    :try_start_2
    new-instance v5, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p0, v6}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    if-eqz v3, :cond_1

    .line 353
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 354
    :catch_1
    move-exception v6

    goto :goto_1

    .line 351
    .end local v1           #allocationId:I
    .end local v2           #asset:I
    .end local v4           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_3

    .line 353
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 351
    :cond_3
    :goto_2
    throw v5

    .line 354
    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public static createFromBitmapResourceBoxed(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "rs"
    .parameter "res"
    .parameter "id"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 366
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 367
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_1

    .line 368
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 377
    :cond_0
    :goto_0
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmapBoxed(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;

    move-result-object v1

    return-object v1

    .line 369
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_2

    .line 370
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_3

    .line 372
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_0

    .line 374
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 5
    .parameter "rs"
    .parameter "e"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 255
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 256
    .local v0, b:Landroid/renderscript/Type$Builder;
    sget-object v3, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {v0, v3, p2}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 257
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 259
    .local v2, t:Landroid/renderscript/Type;
    iget v3, v2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v3}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(I)I

    move-result v1

    .line 260
    .local v1, id:I
    if-nez v1, :cond_0

    .line 261
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Bad element."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_0
    new-instance v3, Landroid/renderscript/Allocation;

    invoke-direct {v3, v1, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v3
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "rs"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    iget v1, p1, Landroid/renderscript/BaseObj;->mID:I

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    iget v1, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v1}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(I)I

    move-result v0

    .line 248
    .local v0, id:I
    new-instance v1, Landroid/renderscript/Allocation;

    invoke-direct {v1, v0, p0, p1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method private data1DChecks(IIII)V
    .locals 2
    .parameter "off"
    .parameter "count"
    .parameter "len"
    .parameter "dataSize"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 81
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset or Count out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    if-ge p3, p4, :cond_2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    return-void
.end method

.method private static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 268
    .local v0, bc:Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 269
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 271
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 272
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 275
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 278
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 280
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad bitmap type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;
    .locals 4
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 284
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 285
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 286
    .local v1, tb:Landroid/renderscript/Type$Builder;
    sget-object v2, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 287
    sget-object v2, Landroid/renderscript/Dimension;->Y:Landroid/renderscript/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 288
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public createAdapter1D()Landroid/renderscript/Allocation$Adapter1D;
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 181
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nAdapter1DCreate()I

    move-result v0

    .line 182
    .local v0, id:I
    if-nez v0, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "allocation failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v0, v2}, Landroid/renderscript/RenderScript;->nAdapter1DBindAllocation(II)V

    .line 186
    new-instance v1, Landroid/renderscript/Allocation$Adapter1D;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0, v0, v2}, Landroid/renderscript/Allocation$Adapter1D;-><init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public createAdapter2D()Landroid/renderscript/Allocation$Adapter2D;
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 224
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nAdapter2DCreate()I

    move-result v0

    .line 225
    .local v0, id:I
    if-nez v0, :cond_0

    .line 226
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "allocation failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v0, v2}, Landroid/renderscript/RenderScript;->nAdapter2DBindAllocation(II)V

    .line 229
    new-instance v1, Landroid/renderscript/Allocation$Adapter2D;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0, v0, v2}, Landroid/renderscript/Allocation$Adapter2D;-><init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public data(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 134
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSubDataFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public data([B)V
    .locals 2
    .parameter "d"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 72
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[B)V

    .line 73
    return-void
.end method

.method public data([F)V
    .locals 2
    .parameter "d"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    .line 77
    return-void
.end method

.method public data([I)V
    .locals 2
    .parameter "d"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 64
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[I)V

    .line 65
    return-void
.end method

.method public data([S)V
    .locals 2
    .parameter "d"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[S)V

    .line 69
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public read(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 139
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSubReadFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method public readData([F)V
    .locals 2
    .parameter "d"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 129
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[F)V

    .line 130
    return-void
.end method

.method public readData([I)V
    .locals 2
    .parameter "d"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 124
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[I)V

    .line 125
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public subData(ILjava/lang/Object;)V
    .locals 3
    .parameter "offset"
    .parameter "o"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 144
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nAllocationSubDataFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public subData1D(II[B)V
    .locals 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 101
    .local v5, dataSize:I
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 102
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[BI)V

    .line 103
    return-void
.end method

.method public subData1D(II[F)V
    .locals 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 106
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 107
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[FI)V

    .line 108
    return-void
.end method

.method public subData1D(II[I)V
    .locals 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 91
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 92
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[II)V

    .line 93
    return-void
.end method

.method public subData1D(II[S)V
    .locals 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 96
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 97
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[SI)V

    .line 98
    return-void
.end method

.method public subData2D(IIII[F)V
    .locals 8
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 119
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    array-length v2, p5

    mul-int/lit8 v7, v2, 0x4

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nAllocationSubData2D(IIIII[FI)V

    .line 120
    return-void
.end method

.method public subData2D(IIII[I)V
    .locals 8
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 114
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    array-length v2, p5

    mul-int/lit8 v7, v2, 0x4

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nAllocationSubData2D(IIIII[II)V

    .line 115
    return-void
.end method

.method public uploadToBufferObject()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 59
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationUploadToBufferObject(I)V

    .line 60
    return-void
.end method

.method public uploadToTexture(I)V
    .locals 3
    .parameter "baseMipLevel"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 49
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationUploadToTexture(IZI)V

    .line 50
    return-void
.end method

.method public uploadToTexture(ZI)V
    .locals 2
    .parameter "genMips"
    .parameter "baseMipLevel"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 54
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nAllocationUploadToTexture(IZI)V

    .line 55
    return-void
.end method
