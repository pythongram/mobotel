.class Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;
.super Landroid/text/method/LinkMovementMethod;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkMovementMethodMy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/telegram/ui/PaymentFormActivity$1;

    .prologue
    .line 230
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 235
    .local v1, "result":Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    .line 236
    :cond_12
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 242
    .end local v1    # "result":Z
    :cond_15
    :goto_15
    return v1

    .line 239
    :catch_16
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 242
    const/4 v1, 0x0

    goto :goto_15
.end method
