.class Lorg/telegram/ui/Components/ChatActivityEnterView$6;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 638
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 644
    const/4 v3, 0x4

    if-ne p2, v3, :cond_6c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 645
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6b

    .line 646
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-ne v3, v2, :cond_61

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 647
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 648
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hidekeyboard_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_61
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V
    invoke-static {v3, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 661
    :cond_6b
    :goto_6b
    return v2

    .line 654
    :cond_6c
    const/16 v3, 0x42

    if-ne p2, v3, :cond_90

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->ctrlPressed:Z

    if-nez v3, :cond_7c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_90

    :cond_7c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_90

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-nez v3, :cond_90

    .line 655
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_6b

    .line 657
    :cond_90
    const/16 v3, 0x71

    if-eq p2, v3, :cond_98

    const/16 v3, 0x72

    if-ne p2, v3, :cond_a2

    .line 658
    :cond_98
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_9f

    move v1, v2

    :cond_9f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->ctrlPressed:Z

    goto :goto_6b

    :cond_a2
    move v2, v1

    .line 661
    goto :goto_6b
.end method
