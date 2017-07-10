.class Lorg/telegram/ui/ActionBar/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;->telehShowDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 444
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$3;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 447
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$3;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$3;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$3;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 449
    return-void
.end method
