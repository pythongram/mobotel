.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field public currentPressCount:I

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->currentPressCount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->pressCount:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I

    move-result v3

    if-ne v2, v3, :cond_3c

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->checkingForLongPress:Z
    invoke-static {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$202(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Z)Z

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->performHapticFeedback(I)Z

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->onLongPress()V
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    .line 235
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 236
    .local v8, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_3c
    return-void
.end method
