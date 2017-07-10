.class Lorg/telegram/ui/Components/EmojiView$32;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1504
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$32;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1515
    :goto_8
    return-void

    .line 1510
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$Listener;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 1513
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6502(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x32

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->val$time:I

    add-int/lit8 v2, v2, -0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    # invokes: Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6600(Lorg/telegram/ui/Components/EmojiView;I)V

    goto :goto_8
.end method
