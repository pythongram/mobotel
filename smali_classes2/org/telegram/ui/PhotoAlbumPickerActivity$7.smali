.class Lorg/telegram/ui/PhotoAlbumPickerActivity$7;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(Z)V
    .registers 3
    .param p1, "canceled"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    .line 486
    if-nez p1, :cond_c

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    .line 489
    :cond_c
    return-void
.end method

.method public didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V
    .registers 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "estimatedSize"    # J
    .param p5, "estimatedDuration"    # J
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V

    .line 495
    return-void
.end method

.method public selectedPhotosChanged()V
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 481
    :cond_27
    return-void
.end method
