.class Lorg/telegram/ui/PaymentFormActivity$15;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1469
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$15;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1472
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1473
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$15;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 1474
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$15;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v2

    aget-object v4, v2, v0

    if-ne v1, v0, :cond_26

    move v2, v3

    :goto_20
    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1474
    :cond_26
    const/4 v2, 0x0

    goto :goto_20

    .line 1476
    :cond_28
    return-void
.end method
