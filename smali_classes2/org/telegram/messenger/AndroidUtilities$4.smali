.class final Lorg/telegram/messenger/AndroidUtilities$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$num:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Landroid/view/View;IF)V
    .registers 4

    .prologue
    .line 1193
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$view:Landroid/view/View;

    iput p2, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$num:I

    iput p3, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$x:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1196
    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$view:Landroid/view/View;

    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$num:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$num:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 1197
    return-void

    .line 1196
    :cond_10
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$x:F

    neg-float v0, v0

    goto :goto_8
.end method
