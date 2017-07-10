.class Lorg/telegram/ui/PaymentFormActivity$22;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lcom/stripe/android/TokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 2059
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4000(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2086
    :goto_9
    return-void

    .line 2079
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2400(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2081
    instance-of v0, p1, Lcom/stripe/android/exception/APIConnectionException;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lcom/stripe/android/exception/APIException;

    if-eqz v0, :cond_2b

    .line 2082
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string v1, "PaymentConnectionFailed"

    const v2, 0x7f07041c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_9

    .line 2084
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_9
.end method

.method public onSuccess(Lcom/stripe/android/model/Token;)V
    .registers 8
    .param p1, "token"    # Lcom/stripe/android/model/Token;

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4000(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2073
    :goto_8
    return-void

    .line 2064
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2065
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$22$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$22$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$22;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method
