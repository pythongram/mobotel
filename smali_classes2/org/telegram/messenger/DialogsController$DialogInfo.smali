.class public Lorg/telegram/messenger/DialogsController$DialogInfo;
.super Ljava/lang/Object;
.source "DialogsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/DialogsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInfo"
.end annotation


# instance fields
.field auto_download:I

.field bookmark_mid:I

.field fav:Z

.field hidden:Z

.field lock:Z

.field private_read:Z

.field private_typing:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(ZZZZZII)V
    .registers 8
    .param p1, "fav"    # Z
    .param p2, "hidden"    # Z
    .param p3, "lock"    # Z
    .param p4, "private_read"    # Z
    .param p5, "private_typing"    # Z
    .param p6, "bookmark_mid"    # I
    .param p7, "auto_download"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->fav:Z

    .line 33
    iput-boolean p2, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->hidden:Z

    .line 34
    iput-boolean p3, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->lock:Z

    .line 35
    iput-boolean p4, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->private_read:Z

    .line 36
    iput-boolean p5, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->private_typing:Z

    .line 37
    iput p6, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->bookmark_mid:I

    .line 38
    iput p7, p0, Lorg/telegram/messenger/DialogsController$DialogInfo;->auto_download:I

    .line 39
    return-void
.end method
