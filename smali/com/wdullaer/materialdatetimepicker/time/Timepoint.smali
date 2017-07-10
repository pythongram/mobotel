.class public Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
.super Ljava/lang/Object;
.source "Timepoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .param p2, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 42
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .param p2, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
    .param p3, "second"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    rem-int/lit8 v0, p1, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    .line 35
    rem-int/lit8 v0, p2, 0x3c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    .line 36
    rem-int/lit8 v0, p3, 0x3c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 5
    .param p1, "time"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 28
    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I
    .registers 5
    .param p1, "t"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 88
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object v2, v0

    .line 90
    .local v2, "other":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v4

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    if-ne v4, v5, :cond_1e

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v4

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    if-ne v4, v5, :cond_1e

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v4

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1b} :catch_1f

    if-ne v4, v5, :cond_1e

    const/4 v3, 0x1

    .line 95
    .end local v2    # "other":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_1e
    :goto_1e
    return v3

    .line 94
    :catch_1f
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_1e
.end method

.method public getHour()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation

    .prologue
    .line 56
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    return v0
.end method

.method public getSecond()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    return v0
.end method

.method public isAM()Z
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPM()Z
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setAM()V
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    .line 79
    :cond_c
    return-void
.end method

.method public setPM()V
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_e

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    .line 83
    :cond_e
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
