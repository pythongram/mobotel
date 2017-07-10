.class Lorg/telegram/ui/Components/ChatActivityEnterView$14;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 909
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    if-nez v0, :cond_9

    .line 922
    :goto_8
    return-void

    .line 915
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_40

    .line 916
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 919
    :cond_40
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->pauseDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_8
.end method
