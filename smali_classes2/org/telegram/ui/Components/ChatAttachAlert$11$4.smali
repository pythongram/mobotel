.class Lorg/telegram/ui/Components/ChatAttachAlert$11$4;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11;->shutterReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

.field final synthetic val$sameTakePictureOrientation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11;Z)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$11;

    .prologue
    .line 835
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->val$sameTakePictureOrientation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 907
    :cond_1c
    :goto_1c
    return-void

    .line 842
    :cond_1d
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 843
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5502(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 845
    const/4 v7, 0x0

    .line 847
    .local v7, "orientation":I
    :try_start_48
    new-instance v10, Landroid/media/ExifInterface;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 848
    .local v10, "ei":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5f} :catch_ab

    move-result v11

    .line 849
    .local v11, "exif":I
    packed-switch v11, :pswitch_data_b0

    .line 863
    .end local v10    # "ei":Landroid/media/ExifInterface;
    .end local v11    # "exif":I
    :goto_63
    :pswitch_63
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v8, v2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$4;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 906
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    .line 864
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto/16 :goto_1c

    .line 851
    .restart local v10    # "ei":Landroid/media/ExifInterface;
    .restart local v11    # "exif":I
    :pswitch_a2
    const/16 v7, 0x5a

    .line 852
    goto :goto_63

    .line 854
    :pswitch_a5
    const/16 v7, 0xb4

    .line 855
    goto :goto_63

    .line 857
    :pswitch_a8
    const/16 v7, 0x10e

    goto :goto_63

    .line 860
    .end local v10    # "ei":Landroid/media/ExifInterface;
    .end local v11    # "exif":I
    :catch_ab
    move-exception v9

    .line 861
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 849
    :pswitch_data_b0
    .packed-switch 0x3
        :pswitch_a5
        :pswitch_63
        :pswitch_63
        :pswitch_a2
        :pswitch_63
        :pswitch_a8
    .end packed-switch
.end method
