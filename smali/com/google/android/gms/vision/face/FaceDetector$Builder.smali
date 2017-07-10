.class public Lcom/google/android/gms/vision/face/FaceDetector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/face/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzaKF:I

.field private zzbOR:I

.field private zzbOS:Z

.field private zzbOT:I

.field private zzbOU:Z

.field private zzbOV:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOR:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOS:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOU:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzaKF:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOV:F

    iput-object p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/face/FaceDetector;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjt;-><init>()V

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzaKF:I

    iput v1, v0, Lcom/google/android/gms/internal/zzbjt;->mode:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOR:I

    iput v1, v0, Lcom/google/android/gms/internal/zzbjt;->zzbPe:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOT:I

    iput v1, v0, Lcom/google/android/gms/internal/zzbjt;->zzbPf:I

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOS:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzbjt;->zzbPg:Z

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOU:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzbjt;->zzbPh:Z

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOV:F

    iput v1, v0, Lcom/google/android/gms/internal/zzbjt;->zzbPi:F

    new-instance v1, Lcom/google/android/gms/internal/zzbjq;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbjq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjt;)V

    new-instance v0, Lcom/google/android/gms/vision/face/FaceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector;-><init>(Lcom/google/android/gms/internal/zzbjq;Lcom/google/android/gms/vision/face/FaceDetector$1;)V

    return-object v0
.end method

.method public setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 5

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid classification type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOT:I

    return-object p0
.end method

.method public setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 5

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid landmark type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOR:I

    return-object p0
.end method

.method public setMinFaceSize(F)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_26

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid proportional face size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOV:F

    return-object p0
.end method

.method public setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 5

    packed-switch p1, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid mode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzaKF:I

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public setProminentFaceOnly(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOS:Z

    return-object p0
.end method

.method public setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzbOU:Z

    return-object p0
.end method
