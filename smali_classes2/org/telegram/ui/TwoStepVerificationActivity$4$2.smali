.class Lorg/telegram/ui/TwoStepVerificationActivity$4$2;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$4;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string v1, ""

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$702(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$800(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 303
    return-void
.end method
