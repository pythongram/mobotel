.class Lorg/telegram/ui/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ShareActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ShareActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ShareActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ShareActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ShareActivity;->finish()V

    .line 85
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ShareActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/ShareActivity;->access$002(Lorg/telegram/ui/ShareActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 86
    return-void
.end method
