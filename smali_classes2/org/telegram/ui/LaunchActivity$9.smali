.class Lorg/telegram/ui/LaunchActivity$9;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1175
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$9;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$9;->val$args:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lorg/telegram/ui/CancelAccountDeletionActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1179
    return-void
.end method
