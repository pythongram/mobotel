.class final Lcom/evernote/android/job/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "WakeLockUtil"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeoutMillis"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 28
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 29
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 31
    invoke-static {p0, v1, p2, p3}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    move-result v2

    if-eqz v2, :cond_18

    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :goto_17
    return-object v1

    .restart local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 35
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 40
    :try_start_e
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    .line 41
    const/4 v1, 0x1

    .line 48
    :goto_12
    return v1

    .line 42
    :catch_13
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 3
    .param p0, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 54
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 60
    :cond_b
    :goto_b
    return-void

    .line 56
    :catch_c
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
