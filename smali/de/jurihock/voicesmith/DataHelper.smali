.class public Lde/jurihock/voicesmith/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# instance fields
.field public a:I

.field private audioRecord:Landroid/media/AudioRecord;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;)V
    .registers 3
    .param p1, "audioRecord"    # Landroid/media/AudioRecord;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lde/jurihock/voicesmith/DataHelper;->a:I

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/DataHelper;->audioRecord:Landroid/media/AudioRecord;

    .line 11
    iput-object p1, p0, Lde/jurihock/voicesmith/DataHelper;->audioRecord:Landroid/media/AudioRecord;

    .line 12
    return-void
.end method


# virtual methods
.method public a([SII)I
    .registers 5
    .param p1, "sArr"    # [S
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 15
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lde/jurihock/voicesmith/DataHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    goto :goto_3
.end method

.method public a([S)V
    .registers 3
    .param p1, "sArr"    # [S

    .prologue
    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lde/jurihock/voicesmith/DataHelper;->a:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/jurihock/voicesmith/DataHelper;->b:Z

    .line 21
    invoke-virtual {p0, p1}, Lde/jurihock/voicesmith/DataHelper;->b([S)Z

    .line 22
    return-void
.end method

.method public final b([S)Z
    .registers 6
    .param p1, "sArr"    # [S

    .prologue
    const/4 v2, 0x0

    .line 25
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_7

    .line 37
    :cond_6
    :goto_6
    return v2

    .line 28
    :cond_7
    const/4 v1, 0x0

    .line 30
    .local v1, "i":I
    :cond_8
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1, v1, v3}, Lde/jurihock/voicesmith/DataHelper;->a([SII)I

    move-result v0

    .line 31
    .local v0, "a":I
    iput v0, p0, Lde/jurihock/voicesmith/DataHelper;->a:I

    .line 32
    if-lez v0, :cond_6

    .line 35
    add-int/2addr v1, v0

    .line 36
    array-length v3, p1

    if-lt v1, v3, :cond_8

    .line 37
    const/4 v2, 0x1

    goto :goto_6
.end method
