.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    .prologue
    .line 1589
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1592
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_bb

    .line 1593
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v0, v3, 0x3c

    .line 1594
    .local v0, "minutes":I
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v4, v0, 0x3c

    sub-int v2, v3, v4

    .line 1595
    .local v2, "seconds":I
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_41

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_8e

    .line 1596
    :cond_41
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "CallText"

    const v5, 0x7f0700f8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    :cond_63
    :goto_63
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 1601
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeout:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v9, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/LoginActivity$ProgressView;->setProgress(F)V

    .line 1643
    .end local v0    # "minutes":I
    .end local v2    # "seconds":I
    :cond_8d
    :goto_8d
    return-void

    .line 1597
    .restart local v0    # "minutes":I
    .restart local v2    # "seconds":I
    :cond_8e
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v6, :cond_63

    .line 1598
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "SmsText"

    const v5, 0x7f070516

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 1604
    .end local v0    # "minutes":I
    .end local v2    # "seconds":I
    :cond_bb
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v3

    if-eqz v3, :cond_d0

    .line 1605
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/LoginActivity$ProgressView;->setProgress(F)V

    .line 1607
    :cond_d0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1608
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_103

    .line 1609
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1610
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1611
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v3, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1612
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1613
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto :goto_8d

    .line 1614
    :cond_103
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v6, :cond_8d

    .line 1615
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15c

    .line 1616
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "Calling"

    const v5, 0x7f0700fa

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1617
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1618
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1619
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1620
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1621
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;)V

    const/16 v5, 0xa

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_8d

    .line 1634
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    :cond_15c
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_8d

    .line 1635
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1636
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1637
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v3, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1638
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1639
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto/16 :goto_8d
.end method
