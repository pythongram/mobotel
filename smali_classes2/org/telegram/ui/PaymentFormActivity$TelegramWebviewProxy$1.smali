.class Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->postEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

.field final synthetic val$eventData:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 210
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 225
    :cond_a
    :goto_a
    return-void

    .line 213
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    const-string v4, "payment_form_submit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 215
    :try_start_15
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "credentials"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    .local v2, "response":Lorg/json/JSONObject;
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_3a} :catch_42

    .line 223
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_3a
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v3}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_a

    .line 219
    :catch_42
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method
