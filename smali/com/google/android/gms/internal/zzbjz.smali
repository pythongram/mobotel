.class public abstract Lcom/google/android/gms/internal/zzbjz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTag:Ljava/lang/String;

.field private zzbPj:Z

.field private zzbPk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjz;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isOperational()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzTS()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract zzTP()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public zzTR()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjz;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzTP()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_11
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    :goto_c
    :try_start_c
    monitor-exit v1

    goto :goto_8

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_e

    throw v0

    :catch_11
    move-exception v0

    :try_start_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->mTag:Ljava/lang/String;

    const-string v3, "Could not finalize native handle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_e

    goto :goto_c
.end method

.method protected zzTS()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjz;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_33

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRX:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v3, "com.google.android.gms.vision.dynamite"

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbjz;->zzb(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;
    :try_end_1d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_b .. :try_end_1d} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_36
    .catchall {:try_start_b .. :try_end_1d} :catchall_33

    :goto_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPj:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->mTag:Ljava/lang/String;

    const-string v2, "Native handle not yet available. Reverting to no-op handle."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPj:Z

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    monitor-exit v1

    goto :goto_a

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_33

    throw v0

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->mTag:Ljava/lang/String;

    const-string v3, "Error creating remote native handle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :cond_3f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPj:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbPk:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->mTag:Ljava/lang/String;

    const-string v2, "Native handle is now available."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_33

    goto :goto_2f

    :catch_4f
    move-exception v0

    goto :goto_37
.end method

.method protected abstract zzb(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamite/DynamiteModule;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation
.end method
