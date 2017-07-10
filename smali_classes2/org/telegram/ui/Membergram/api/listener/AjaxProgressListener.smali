.class public Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;
.super Landroid/widget/ProgressBar;
.source "AjaxProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;
    }
.end annotation


# instance fields
.field private mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    .line 17
    return-void
.end method


# virtual methods
.method public getAjaxProgressListener()Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    return-object v0
.end method

.method public setAjaxProgressListener(Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;)V
    .registers 2
    .param p1, "progressListener"    # Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    .line 46
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    if-eqz v0, :cond_11

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->mProgressListener:Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;

    invoke-virtual {p0}, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener;->getMax()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/Membergram/api/listener/AjaxProgressListener$AjaxProgress;->onProgress(II)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 38
    :cond_11
    monitor-exit p0

    return-void

    .line 35
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
