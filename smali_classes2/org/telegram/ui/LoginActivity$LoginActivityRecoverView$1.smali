.class Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .prologue
    .line 2481
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 2484
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onNextPressed()V

    .line 2486
    const/4 v0, 0x1

    .line 2488
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
