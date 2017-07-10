.class Lorg/telegram/ui/PaymentFormActivity$4;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 638
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 15
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 651
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1400(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 708
    :goto_8
    return-void

    .line 654
    :cond_9
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v11, 0x1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z
    invoke-static {v10, v11}, Lorg/telegram/ui/PaymentFormActivity;->access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 655
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 656
    .local v8, "text":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x9

    aget-object v5, v10, v11

    check-cast v5, Lorg/telegram/ui/Components/HintEditText;

    .line 658
    .local v5, "phoneField":Lorg/telegram/ui/Components/HintEditText;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5b

    .line 659
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 660
    const-string v10, "PaymentShippingPhoneNumber"

    const v11, 0x7f07042b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 707
    :cond_54
    :goto_54
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v11, 0x0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z
    invoke-static {v10, v11}, Lorg/telegram/ui/PaymentFormActivity;->access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto :goto_8

    .line 663
    :cond_5b
    const/4 v4, 0x0

    .line 664
    .local v4, "ok":Z
    const/4 v9, 0x0

    .line 665
    .local v9, "textToSet":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_f6

    .line 666
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_65
    const/4 v10, 0x1

    if-lt v0, v10, :cond_b5

    .line 667
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, "sub":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_174

    .line 670
    const/4 v4, 0x1

    .line 671
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x9

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 672
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    aget-object v10, v10, v11

    move-object v8, v7

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 676
    .end local v1    # "country":Ljava/lang/String;
    .end local v7    # "sub":Ljava/lang/String;
    :cond_b5
    if-nez v4, :cond_f6

    .line 677
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x9

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 678
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 681
    .end local v0    # "a":I
    :cond_f6
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    .restart local v1    # "country":Ljava/lang/String;
    const/4 v6, 0x0

    .line 683
    .local v6, "set":Z
    if-eqz v1, :cond_130

    .line 684
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 685
    .local v3, "index":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_130

    .line 686
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    .local v2, "hint":Ljava/lang/String;
    if-eqz v2, :cond_130

    .line 688
    const/4 v6, 0x1

    .line 689
    const/16 v10, 0x58

    const/16 v11, 0x2013

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 690
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 694
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_130
    if-nez v6, :cond_142

    .line 695
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 696
    const-string v10, "PaymentShippingPhoneNumber"

    const v11, 0x7f07042b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 698
    :cond_142
    if-nez v4, :cond_163

    .line 699
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    aget-object v10, v10, v11

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity$4;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 701
    :cond_163
    if-eqz v9, :cond_54

    .line 702
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 703
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    goto/16 :goto_54

    .line 666
    .end local v6    # "set":Z
    .restart local v0    # "a":I
    .restart local v7    # "sub":Ljava/lang/String;
    :cond_174
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_65
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 642
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 647
    return-void
.end method
