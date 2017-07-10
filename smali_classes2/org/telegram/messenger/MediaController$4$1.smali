.class Lorg/telegram/messenger/MediaController$4$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$4;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$4;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$4;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$4;

    .prologue
    .line 717
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iput p2, p0, Lorg/telegram/messenger/MediaController$4$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 720
    iget v1, p0, Lorg/telegram/messenger/MediaController$4$1;->val$state:I

    if-ne v1, v3, :cond_5e

    .line 721
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v1

    if-nez v1, :cond_42

    .line 722
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 726
    :cond_31
    :goto_31
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v0

    .line 727
    .local v0, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v0, :cond_3a

    .line 728
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->pause()V

    .line 730
    :cond_3a
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    .line 740
    .end local v0    # "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    :cond_41
    :goto_41
    return-void

    .line 723
    :cond_42
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 724
    :cond_56
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_31

    .line 731
    :cond_5e
    iget v1, p0, Lorg/telegram/messenger/MediaController$4$1;->val$state:I

    if-nez v1, :cond_6b

    .line 732
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_41

    .line 733
    :cond_6b
    iget v1, p0, Lorg/telegram/messenger/MediaController$4$1;->val$state:I

    if-ne v1, v4, :cond_41

    .line 734
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v0

    .line 735
    .restart local v0    # "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v0, :cond_78

    .line 736
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->pause()V

    .line 738
    :cond_78
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4$1;->this$1:Lorg/telegram/messenger/MediaController$4;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_41
.end method
