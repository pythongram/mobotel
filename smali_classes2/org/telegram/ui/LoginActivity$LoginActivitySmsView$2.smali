.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1289
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

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
    .line 1292
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    .line 1294
    const/4 v0, 0x1

    .line 1296
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
