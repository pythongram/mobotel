.class Lorg/telegram/ui/LaunchActivity$15;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1749
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$15;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$15;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1502(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1753
    return-void
.end method
