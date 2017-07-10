.class Lorg/telegram/ui/PaymentFormActivity$5;
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
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 714
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 13
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 741
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->access$1800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 786
    :goto_8
    return-void

    .line 744
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v8

    const/16 v9, 0x9

    aget-object v5, v8, v9

    check-cast v5, Lorg/telegram/ui/Components/HintEditText;

    .line 745
    .local v5, "phoneField":Lorg/telegram/ui/Components/HintEditText;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v6

    .line 746
    .local v6, "start":I
    const-string v4, "0123456789"

    .line 747
    .local v4, "phoneChars":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 748
    .local v7, "str":Ljava/lang/String;
    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4e

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    iget v10, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 750
    add-int/lit8 v6, v6, -0x1

    .line 752
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 753
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_58
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_70

    .line 754
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "ch":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 759
    .end local v2    # "ch":Ljava/lang/String;
    :cond_70
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 760
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "hint":Ljava/lang/String;
    if-eqz v3, :cond_be

    .line 762
    const/4 v0, 0x0

    :goto_7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v0, v8, :cond_be

    .line 763
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_a9

    .line 764
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_a6

    .line 765
    const/16 v8, 0x20

    invoke-virtual {v1, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 767
    if-ne v6, v0, :cond_a6

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a6

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_a6

    .line 768
    add-int/lit8 v6, v6, 0x1

    .line 762
    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 772
    :cond_a9
    const/16 v8, 0x20

    invoke-virtual {v1, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v8, v0, 0x1

    if-ne v6, v8, :cond_be

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_be

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_be

    .line 774
    add-int/lit8 v6, v6, 0x1

    .line 780
    :cond_be
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    if-ltz v6, :cond_cc

    .line 782
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v8

    if-gt v6, v8, :cond_d7

    .end local v6    # "start":I
    :goto_c9
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 784
    :cond_cc
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    .line 785
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_8

    .line 782
    .restart local v6    # "start":I
    :cond_d7
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v6

    goto :goto_c9
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v0, 0x1

    .line 720
    if-nez p3, :cond_8

    if-ne p4, v0, :cond_8

    .line 721
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    .line 732
    :goto_7
    return-void

    .line 722
    :cond_8
    if-ne p3, v0, :cond_22

    if-nez p4, :cond_22

    .line 723
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1e

    if-lez p2, :cond_1e

    .line 724
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    .line 725
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    goto :goto_7

    .line 727
    :cond_1e
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_7

    .line 730
    :cond_22
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_7
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 737
    return-void
.end method
