.class public Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2249
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2215
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_19

    :goto_16
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2221
    return-void

    .line 2220
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;)V
    .registers 3
    .param p1, "other"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .prologue
    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2225
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2226
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2227
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 2239
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .registers 2

    .prologue
    .line 2230
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method invalidateAnchor()V
    .registers 2

    .prologue
    .line 2234
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2235
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2244
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    return-void

    .line 2246
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
