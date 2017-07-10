.class Lorg/telegram/ui/PaymentFormActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 398
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 401
    const/4 v1, -0x1

    if-ne p1, v1, :cond_14

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$300(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 430
    :cond_d
    :goto_d
    return-void

    .line 405
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto :goto_d

    .line 406
    :cond_14
    if-ne p1, v2, :cond_d

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$300(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 410
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v1

    if-eq v1, v3, :cond_33

    .line 411
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 413
    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v1

    if-nez v1, :cond_46

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->sendForm()V
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$600(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_d

    .line 416
    :cond_46
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v1

    if-ne v1, v2, :cond_82

    .line 417
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4f
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_79

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 419
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    invoke-static {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$802(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 423
    :cond_79
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_d

    .line 417
    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 424
    .end local v0    # "a":I
    :cond_82
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_92

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1000(Lorg/telegram/ui/PaymentFormActivity;)Z

    goto/16 :goto_d

    .line 426
    :cond_92
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1100(Lorg/telegram/ui/PaymentFormActivity;)V

    goto/16 :goto_d
.end method
