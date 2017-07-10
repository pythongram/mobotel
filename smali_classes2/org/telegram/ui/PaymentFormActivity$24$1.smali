.class Lorg/telegram/ui/PaymentFormActivity$24$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$24;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$24;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$24;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$24;

    .prologue
    .line 2255
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$24$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2258
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$24$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$24;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2259
    return-void
.end method
