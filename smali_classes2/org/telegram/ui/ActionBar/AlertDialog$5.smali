.class Lorg/telegram/ui/ActionBar/AlertDialog$5;
.super Landroid/widget/TextView;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 435
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$5;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    if-eqz p1, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$5;->setAlpha(F)V

    .line 440
    return-void

    .line 439
    :cond_b
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_7
.end method
