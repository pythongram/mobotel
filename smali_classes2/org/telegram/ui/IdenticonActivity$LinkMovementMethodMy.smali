.class Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;
.super Landroid/text/method/LinkMovementMethod;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IdenticonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkMovementMethodMy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/IdenticonActivity$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/telegram/ui/IdenticonActivity$1;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 81
    :goto_4
    return v1

    .line 78
    :catch_5
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_4
.end method
