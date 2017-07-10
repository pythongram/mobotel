.class Lorg/telegram/ui/Components/ChatActivityEnterView$8;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field processChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 685
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->processChange:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 729
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 743
    :cond_9
    :goto_9
    return-void

    .line 732
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_33

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v2, :cond_33

    .line 733
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 735
    :cond_33
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->processChange:Z

    if-eqz v2, :cond_9

    .line 736
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 737
    .local v1, "spans":[Landroid/text/style/ImageSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    array-length v2, v1

    if-ge v0, v2, :cond_4f

    .line 738
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 740
    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 741
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->processChange:Z

    goto :goto_9
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 691
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 695
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-ne v3, v4, :cond_b

    .line 725
    :cond_a
    :goto_a
    return-void

    .line 698
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 699
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 700
    .local v2, "message":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 701
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 702
    if-gt p4, v6, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_37

    .line 703
    :cond_32
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 705
    :cond_37
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v5

    add-int/lit8 v3, p4, 0x1

    if-gt p3, v3, :cond_45

    sub-int v3, p4, p3

    if-le v3, v6, :cond_ef

    :cond_45
    move v3, v4

    :goto_46
    invoke-interface {v5, p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    .line 708
    :cond_49
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-eq v3, v6, :cond_59

    if-eq p3, p4, :cond_59

    sub-int v3, p4, p3

    if-le v3, v4, :cond_59

    .line 709
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->processChange:Z

    .line 711
    :cond_59
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 712
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 713
    .local v0, "currentTime":I
    const/4 v1, 0x0

    .line 714
    .local v1, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    long-to-int v3, v4

    if-lez v3, :cond_ad

    .line 715
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 717
    :cond_ad
    if-eqz v1, :cond_d3

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v3, v4, :cond_a

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_d3

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ge v3, v0, :cond_d3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 720
    :cond_d3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3602(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 721
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 722
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needSendTyping()V

    goto/16 :goto_a

    .line 705
    .end local v0    # "currentTime":I
    .end local v1    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ef
    const/4 v3, 0x0

    goto/16 :goto_46
.end method
