.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    .prologue
    .line 716
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 719
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1f

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1700(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    .line 723
    :cond_1f
    return-void
.end method
