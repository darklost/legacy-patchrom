.class final Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosterDownloader"
.end annotation


# static fields
.field private static mQueueRefCount:I

.field private static mRequestQueue:Landroid/net/http/RequestQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Landroid/net/http/Headers;

.field private mPosterBytes:Ljava/io/ByteArrayOutputStream;

.field private final mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "url"
    .parameter "proxy"

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 364
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    .line 365
    return-void
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 446
    :cond_0
    return-void

    .line 443
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    throw v0

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseQueue()V
    .locals 2

    .prologue
    .line 457
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_0

    .line 461
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    .line 462
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    goto :goto_0
.end method

.method private retainQueue()V
    .locals 2

    .prologue
    .line 450
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 453
    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    .line 454
    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 377
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->releaseQueue()V

    .line 378
    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 424
    return-void
.end method

.method public data([BI)V
    .locals 2
    .parameter "data"
    .parameter "len"

    .prologue
    .line 392
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 396
    return-void
.end method

.method public endData()V
    .locals 4

    .prologue
    .line 399
    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 400
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 401
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    .local v0, poster:Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    #calls: Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Landroid/webkit/HTML5VideoViewProxy;->access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    .line 405
    .end local v0           #poster:Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    .line 408
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;

    invoke-direct {v2, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;-><init>(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "description"

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 428
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .parameter "error"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 388
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    .line 389
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->retainQueue()V

    .line 369
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 370
    return-void
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .parameter "major_version"
    .parameter "minor_version"
    .parameter "code"
    .parameter "reason_phrase"

    .prologue
    .line 384
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    .line 385
    return-void
.end method
