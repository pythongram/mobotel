.class synthetic Lcom/evernote/android/job/v24/JobProxy24$1;
.super Ljava/lang/Object;
.source "JobProxy24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/v24/JobProxy24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    invoke-static {}, Lcom/evernote/android/job/JobRequest$NetworkType;->values()[Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evernote/android/job/v24/JobProxy24$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    :try_start_9
    sget-object v0, Lcom/evernote/android/job/v24/JobProxy24$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    sget-object v1, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
