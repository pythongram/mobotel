.class public final Lcom/onesignal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/onesignal/R$styleable;->LoadingImageView:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/onesignal/R$styleable;->SignInButton:[I

    return-void

    .line 91
    :array_10
    .array-data 4
        0x7f0100e7
        0x7f0100e8
        0x7f0100e9
    .end array-data

    .line 95
    :array_1a
    .array-data 4
        0x7f010146
        0x7f010147
        0x7f010148
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
