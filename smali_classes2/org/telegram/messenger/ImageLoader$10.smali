.class Lorg/telegram/messenger/ImageLoader$10;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1968
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$10;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$10;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1971
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$10;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$10;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1972
    .local v0, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-eqz v0, :cond_14

    .line 1973
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1975
    :cond_14
    return-void
.end method
