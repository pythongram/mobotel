.class Lorg/telegram/ui/TwoStepVerificationActivity$2;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$2;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

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
    .line 194
    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    const/4 v0, 0x6

    if-ne p2, v0, :cond_d

    .line 195
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$2;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$000(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
