.class Lorg/telegram/ui/ActionBar/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_9

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 323
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 325
    return-void
.end method
