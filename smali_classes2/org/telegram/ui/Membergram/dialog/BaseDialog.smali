.class public Lorg/telegram/ui/Membergram/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const v0, 0x7f0a00cf

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    iput-object p1, p0, Lorg/telegram/ui/Membergram/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method
