.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    .prologue
    .line 852
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iput-object p2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity;->needHideProgress()V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v0, v8}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1002(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_5d

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    const-string v2, "CancelLinkSuccess"

    const v3, 0x7f070102

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v7, v7, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity;->errorDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$602(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 876
    :cond_5c
    :goto_5c
    return-void

    .line 860
    :cond_5d
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1402(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v3, :cond_86

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v5, :cond_a4

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v2, :cond_a4

    :cond_86
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v2, :cond_ab

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v5, :cond_a4

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v3, :cond_ab

    .line 862
    :cond_a4
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    .line 864
    :cond_ab
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v2, :cond_e9

    .line 865
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 866
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 871
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v3, :cond_5c

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_5c

    .line 867
    :cond_e9
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v3, :cond_c5

    .line 868
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 869
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_c5
.end method
