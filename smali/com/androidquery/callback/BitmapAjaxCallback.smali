.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x0

.field private static BIG_PIXELS:I = 0x0

.field private static BIG_TPIXELS:I = 0x0

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I

.field private static SMALL_PIXELS:I

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private rotate:Z

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 69
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 70
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 71
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 72
    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 73
    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 553
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 558
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 862
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 93
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 102
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 1045
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 1047
    .local v0, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-nez v0, :cond_27

    .line 1049
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1051
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1052
    .restart local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :goto_1f
    return-void

    .line 1056
    :cond_20
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 1061
    :cond_27
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .registers 28
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "progress"    # Ljava/lang/Object;
    .param p5, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p6, "options"    # Lcom/androidquery/callback/ImageOptions;
    .param p7, "proxy"    # Lorg/apache/http/HttpHost;
    .param p8, "networkUrl"    # Ljava/lang/String;

    .prologue
    .line 960
    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .registers 29
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "memCache"    # Z
    .param p5, "fileCache"    # Z
    .param p6, "targetWidth"    # I
    .param p7, "fallbackId"    # I
    .param p8, "preset"    # Landroid/graphics/Bitmap;
    .param p9, "animation"    # I
    .param p10, "ratio"    # F
    .param p11, "anchor"    # F
    .param p12, "progress"    # Ljava/lang/Object;
    .param p13, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p14, "policy"    # I
    .param p15, "round"    # I
    .param p16, "proxy"    # Lorg/apache/http/HttpHost;
    .param p17, "networkUrl"    # Ljava/lang/String;

    .prologue
    .line 975
    const/4 v3, 0x0

    .line 977
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_b

    .line 978
    move/from16 v0, p6

    move/from16 v1, p15

    invoke-static {p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 981
    :cond_b
    if-eqz v3, :cond_29

    .line 982
    const v2, 0x40ff0001

    invoke-virtual {p2, v2, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 983
    const/4 v2, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 984
    const/4 v9, 0x4

    move-object v2, p2

    move-object/from16 v4, p8

    move/from16 v5, p7

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {v2 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    .line 998
    :goto_28
    return-void

    .line 986
    :cond_29
    new-instance v10, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v10}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 987
    .local v10, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-virtual {v10, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    .line 988
    if-eqz p16, :cond_9a

    .line 989
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v10, v2, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 991
    :cond_9a
    if-eqz p0, :cond_a0

    .line 992
    invoke-virtual {v10, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_28

    .line 994
    :cond_a0
    invoke-virtual {v10, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_28
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 448
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 8
    .param p1, "cb"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/widget/ImageView;
    .param p4, "bm"    # Landroid/graphics/Bitmap;
    .param p5, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v1, 0x0

    .line 595
    if-eqz p3, :cond_5

    if-nez p1, :cond_6

    .line 608
    :cond_5
    :goto_5
    return-void

    .line 597
    :cond_6
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 599
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    .line 600
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 607
    :cond_1a
    :goto_1a
    invoke-virtual {p1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    goto :goto_5

    .line 602
    :cond_1e
    invoke-direct {p1, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1a
.end method

.method public static clearCache()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 685
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 686
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 687
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 688
    return-void
.end method

.method protected static clearTasks()V
    .registers 1

    .prologue
    .line 691
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 692
    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "rotate"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_15

    .line 252
    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    :cond_7
    :goto_7
    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_14

    .line 261
    const-string v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_14
    return-object v0

    .line 254
    :cond_15
    if-eqz p1, :cond_7

    .line 256
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "rotate"    # Z

    .prologue
    .line 275
    const/4 v4, 0x0

    .line 277
    .local v4, "result":Landroid/graphics/Bitmap;
    if-nez p1, :cond_8

    .line 278
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 281
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->isInputSharable()Z

    move-result v5

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 282
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 284
    const/4 v2, 0x0

    .line 288
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_2d
    .catchall {:try_start_12 .. :try_end_17} :catchall_35

    .line 289
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 290
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    invoke-static {v1, v5, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_28

    if-eqz p2, :cond_28

    .line 293
    invoke-static {p0, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_3d
    .catchall {:try_start_17 .. :try_end_27} :catchall_3a

    move-result-object v4

    .line 300
    :cond_28
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 303
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2c
    return-object v4

    .line 297
    :catch_2d
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    :goto_2e
    :try_start_2e
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 300
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_2c

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v5

    .line 300
    :goto_36
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 301
    throw v5

    .line 299
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_3a
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_36

    .line 297
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3d
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2e
.end method

.method private static fadeIn(II)Z
    .registers 4
    .param p0, "animation"    # I
    .param p1, "source"    # I

    .prologue
    const/4 v0, 0x1

    .line 937
    packed-switch p0, :pswitch_data_c

    .line 945
    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_5
    :pswitch_5
    return v0

    .line 941
    :pswitch_6
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    .line 943
    :pswitch_9
    if-ne p1, v0, :cond_4

    goto :goto_5

    .line 937
    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "iv"    # Landroid/view/View;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fallback"    # I

    .prologue
    const/4 v1, 0x1

    .line 829
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_14

    .line 830
    const/4 p1, 0x0

    .line 833
    :cond_14
    if-eqz p1, :cond_1b

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :cond_1a
    :goto_1a
    return-object p1

    .line 835
    :cond_1b
    const/4 v0, -0x2

    if-ne p2, v0, :cond_24

    .line 836
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 837
    :cond_24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 838
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a
.end method

.method private static getBCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 696
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 698
    :cond_15
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 555
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 519
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_26

    .line 521
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    if-nez v0, :cond_26

    .line 525
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_26

    .line 528
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 533
    .end local v1    # "key":Ljava/lang/String;
    :cond_26
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 711
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 713
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 775
    if-lez p1, :cond_19

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 779
    :cond_19
    if-lez p2, :cond_32

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 783
    :cond_32
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v3, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_18

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_18

    .line 546
    invoke-static {v1, v3, v3, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 550
    :cond_18
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "target"    # I
    .param p3, "width"    # Z
    .param p4, "round"    # I

    .prologue
    .line 376
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "target"    # I
    .param p3, "width"    # Z
    .param p4, "round"    # I
    .param p5, "rotate"    # Z

    .prologue
    .line 392
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 424
    :cond_5
    :goto_5
    return-object v0

    .line 394
    :cond_6
    const/4 v4, 0x0

    .line 396
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    if-lez p2, :cond_29

    .line 398
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 399
    .local v3, "info":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    invoke-static {p0, p1, v3, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 403
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 404
    .local v1, "dim":I
    if-nez p3, :cond_1e

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 405
    :cond_1e
    invoke-static {v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result v5

    .line 407
    .local v5, "ssize":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 408
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 412
    .end local v1    # "dim":I
    .end local v3    # "info":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "ssize":I
    :cond_29
    const/4 v0, 0x0

    .line 414
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_2a
    invoke-static {p0, p1, v4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_35

    move-result-object v0

    .line 420
    :goto_2e
    if-lez p4, :cond_5

    .line 421
    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 415
    :catch_35
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 417
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .registers 7
    .param p0, "ori"    # I

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 342
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_38

    .line 371
    :goto_12
    return-object v0

    .line 345
    :pswitch_13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_12

    .line 348
    :pswitch_17
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 351
    :pswitch_1b
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 355
    :pswitch_22
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 359
    :pswitch_29
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 362
    :pswitch_2d
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 366
    :pswitch_34
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 343
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_22
        :pswitch_29
        :pswitch_2d
        :pswitch_34
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 1069
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1070
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1072
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 1073
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1074
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1075
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1076
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 1078
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1079
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1080
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1081
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1083
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1084
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1086
    return-object v2
.end method

.method private static getSCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 704
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 706
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method private static isInputSharable()Z
    .registers 2

    .prologue
    .line 268
    const-string v0, "level"

    sget v1, Lcom/androidquery/AQuery;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # F
    .param p3, "anchor"    # F

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_14

    .line 887
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 892
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_13
    return-object v0

    .line 889
    :cond_14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_13
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 746
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 748
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    .line 749
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 751
    .local v1, "result":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1a

    .line 752
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 753
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 756
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1a
    if-nez v1, :cond_34

    .line 757
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 758
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 760
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_34

    .line 762
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_34

    .line 763
    const/4 v2, 0x0

    sput-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 764
    const/4 v1, 0x0

    .line 770
    :cond_34
    return-object v1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "invalid"    # Z

    .prologue
    .line 788
    if-nez p3, :cond_3

    .line 818
    :cond_2
    :goto_2
    return-void

    .line 790
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v2, v3, v4

    .line 792
    .local v2, "pixels":I
    const/4 v0, 0x0

    .line 794
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p4, :cond_2a

    .line 795
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 802
    :goto_14
    if-gtz p1, :cond_18

    if-lez p2, :cond_38

    .line 804
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 809
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 796
    .end local v1    # "key":Ljava/lang/String;
    :cond_2a
    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v2, v3, :cond_33

    .line 797
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 798
    goto :goto_14

    .line 799
    :cond_33
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    .line 813
    :cond_38
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x1

    .line 847
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 849
    :cond_12
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 852
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 859
    :cond_28
    :goto_28
    return-void

    .line 855
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_28
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 309
    if-nez p1, :cond_6

    const/4 v10, 0x0

    .line 337
    :cond_5
    :goto_5
    return-object v10

    .line 311
    :cond_6
    move-object v10, p1

    .line 313
    .local v10, "result":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    .line 316
    .local v9, "ori":I
    :try_start_8
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 317
    .local v8, "ei":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_76

    move-result v9

    .line 323
    .end local v8    # "ei":Landroid/media/ExifInterface;
    :goto_14
    if-lez v9, :cond_5

    .line 325
    invoke-static {v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 326
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 328
    const-string v0, "before"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    const-string v0, "after"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    if-eq p1, v10, :cond_5

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 318
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_76
    move-exception v7

    .line 320
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private static sampleSize(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "target"    # I

    .prologue
    .line 431
    const/4 v1, 0x1

    .line 433
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0xa

    if-lt v0, v2, :cond_7

    .line 444
    :cond_6
    return v1

    .line 435
    :cond_7
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_6

    .line 439
    div-int/lit8 p0, p0, 0x2

    .line 440
    mul-int/lit8 v1, v1, 0x2

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "isPreset"    # Z

    .prologue
    .line 866
    if-nez p3, :cond_7

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    :cond_6
    :goto_6
    return-void

    .line 871
    :cond_7
    if-eqz p4, :cond_15

    .line 872
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    invoke-static {p2, p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 876
    :cond_15
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_6

    .line 877
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto :goto_6
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .registers 16
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "preset"    # Landroid/graphics/Bitmap;
    .param p3, "fallback"    # I
    .param p4, "animation"    # I
    .param p5, "ratio"    # F
    .param p6, "anchor"    # F
    .param p7, "source"    # I

    .prologue
    .line 898
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 899
    if-nez p1, :cond_b

    .line 900
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 933
    :goto_a
    return-void

    .line 904
    :cond_b
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 905
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 907
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 908
    if-nez p2, :cond_3d

    .line 909
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 910
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 911
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 925
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    if-eqz v0, :cond_65

    .line 928
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 929
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 914
    :cond_3d
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 915
    .local v3, "pd":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    .line 916
    .local v2, "ds":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 917
    .local v4, "td":Landroid/graphics/drawable/TransitionDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 918
    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 919
    move-object v1, v4

    .line 921
    goto :goto_2d

    .end local v2    # "ds":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "pd":Landroid/graphics/drawable/Drawable;
    .end local v4    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_5a
    if-lez p4, :cond_2d

    .line 922
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2d

    .line 931
    :cond_65
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

.method public static setCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 631
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 632
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 633
    return-void
.end method

.method public static setDelayWrite(Z)V
    .registers 1
    .param p0, "delay"    # Z

    .prologue
    .line 644
    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 645
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 621
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 622
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 623
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 677
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 678
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 679
    return-void
.end method

.method public static setPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 655
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 656
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 657
    return-void
.end method

.method public static setSmallPixel(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 667
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 668
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 669
    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 456
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 459
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "anchor"    # F

    .prologue
    .line 224
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 226
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "animation"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 183
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1009
    .local v2, "v":Landroid/widget/ImageView;
    if-nez v1, :cond_17

    .line 1010
    invoke-virtual {p0, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 1011
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 1035
    :goto_16
    return-void

    .line 1015
    :cond_17
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1016
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 1017
    const v3, 0x40ff0001

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1018
    new-instance v3, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v3}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 1019
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_16

    .line 1024
    :cond_39
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1026
    sget-object v3, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1027
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1028
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_16

    .line 1030
    :cond_4f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 1031
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_16
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 161
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 566
    .local v3, "firstView":Landroid/widget/ImageView;
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/WeakHashMap;

    .line 569
    .local v10, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-eqz v10, :cond_18

    invoke-virtual {v10, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 570
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 573
    :cond_20
    if-eqz v10, :cond_30

    .line 575
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 577
    .local v11, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    .line 585
    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_30
    return-void

    .line 577
    .restart local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 578
    .local v7, "view":Landroid/widget/ImageView;
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 579
    .local v5, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    iput-object p3, v5, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 580
    invoke-direct/range {v4 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_2a
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 612
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 172
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 138
    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 465
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 115
    return-object p0
.end method

.method protected isStreamingContent()Z
    .registers 2

    .prologue
    .line 1039
    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 720
    :goto_6
    return-object v0

    .line 719
    :cond_7
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    .line 720
    :cond_d
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 823
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 824
    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "preset"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 150
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 194
    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "rotate"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    .line 205
    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "radius"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    .line 241
    return-object p0
.end method

.method protected skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 589
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    return-void
.end method

.method protected bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "targetWidth"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 126
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v5, 0x1

    .line 473
    const/4 v2, 0x0

    .line 475
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v1

    .line 476
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_c

    .line 477
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 482
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_34

    .line 484
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez v3, :cond_35

    .line 485
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    :cond_1a
    :goto_1a
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_24

    .line 493
    iput-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    .line 498
    :cond_24
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    if-ne v3, v5, :cond_34

    if-eqz v1, :cond_34

    .line 499
    const-string v3, "invalid bm from net"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 508
    :cond_34
    return-object v0

    .line 486
    :cond_35
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3f

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_42

    .line 487
    :cond_3f
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 488
    goto :goto_1a

    :cond_42
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1a

    .line 489
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    goto :goto_1a
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
