.class Lorg/telegram/ui/PaymentFormActivity$3$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$3;

    .prologue
    .line 549
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$3$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$3$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/telegram/ui/PaymentFormActivity;->access$1302(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    return-void
.end method
