.class Lorg/telegram/ui/Components/AvatarUpdater$1;
.super Ljava/lang/Object;
.source "AvatarUpdater.java"

# interfaces
.implements Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarUpdater;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarUpdater;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AvatarUpdater;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    .local p4, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/high16 v4, 0x44480000    # 800.0f

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v4, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    # invokes: Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AvatarUpdater;->access$000(Lorg/telegram/ui/Components/AvatarUpdater;Landroid/graphics/Bitmap;)V

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1a
    return-void
.end method

.method public didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "estimatedSize"    # J
    .param p5, "estimatedDuration"    # J
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public startPhotoSelectActivity()V
    .registers 5

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "photoPickerIntent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v3, 0xe

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 114
    .end local v1    # "photoPickerIntent":Landroid/content/Intent;
    :goto_15
    return-void

    .line 111
    :catch_16
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
