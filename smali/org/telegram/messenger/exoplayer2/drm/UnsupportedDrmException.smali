.class public final Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INSTANTIATION_ERROR:I = 0x2

.field public static final REASON_UNSUPPORTED_SCHEME:I = 0x1


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;->reason:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 62
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;->reason:I

    .line 63
    return-void
.end method
