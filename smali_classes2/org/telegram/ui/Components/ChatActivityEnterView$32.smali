.class Lorg/telegram/ui/Components/ChatActivityEnterView$32;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V
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
    .line 2485
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 10
    .param p1, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2488
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2489
    .local v0, "object":Lorg/telegram/messenger/MessageObject;
    :goto_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    :goto_20
    invoke-virtual {v4, p1, v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    .line 2490
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 2491
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2492
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2498
    :cond_3b
    :goto_3b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 2499
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2501
    :cond_4c
    return-void

    .line 2488
    .end local v0    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_4d
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    long-to-int v3, v4

    if-gez v3, :cond_5d

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_10

    :cond_5d
    move-object v0, v2

    goto :goto_10

    .line 2489
    .restart local v0    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_5f
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    goto :goto_20

    .line 2493
    :cond_66
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->single_use:Z

    if-eqz v3, :cond_3b

    .line 2494
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2495
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2496
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answered_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3b
.end method
