.class Lorg/telegram/ui/PaymentFormActivity$10;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1062
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1065
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 1078
    :goto_a
    return v1

    .line 1068
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_23

    .line 1069
    new-instance v0, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 1070
    .local v0, "fragment":Lorg/telegram/ui/CountrySelectActivity;
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$10$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$10$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$10;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .end local v0    # "fragment":Lorg/telegram/ui/CountrySelectActivity;
    :cond_23
    move v1, v2

    .line 1078
    goto :goto_a
.end method
