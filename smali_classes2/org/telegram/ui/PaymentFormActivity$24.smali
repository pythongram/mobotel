.class Lorg/telegram/ui/PaymentFormActivity$24;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->sendData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 2249
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$24;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$24;->val$req:Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2252
    if-eqz p1, :cond_28

    .line 2253
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    if-eqz v0, :cond_1b

    .line 2254
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2255
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$24$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$24$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$24;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2280
    :cond_1a
    :goto_1a
    return-void

    .line 2261
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_1b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerficationNeeded;

    if-eqz v0, :cond_1a

    .line 2262
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$24$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$24$2;-><init>(Lorg/telegram/ui/PaymentFormActivity$24;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 2271
    :cond_28
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$24$3;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$24$3;-><init>(Lorg/telegram/ui/PaymentFormActivity$24;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1a
.end method
