.class public final enum Lcom/evernote/android/job/Job$Result;
.super Ljava/lang/Enum;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/android/job/Job$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/android/job/Job$Result;

.field public static final enum FAILURE:Lcom/evernote/android/job/Job$Result;

.field public static final enum RESCHEDULE:Lcom/evernote/android/job/Job$Result;

.field public static final enum SUCCESS:Lcom/evernote/android/job/Job$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/evernote/android/job/Job$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/Job$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    .line 63
    new-instance v0, Lcom/evernote/android/job/Job$Result;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/evernote/android/job/Job$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    .line 69
    new-instance v0, Lcom/evernote/android/job/Job$Result;

    const-string v1, "RESCHEDULE"

    invoke-direct {v0, v1, v4}, Lcom/evernote/android/job/Job$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/evernote/android/job/Job$Result;

    sget-object v1, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/evernote/android/job/Job$Result;->$VALUES:[Lcom/evernote/android/job/Job$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/Job$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/evernote/android/job/Job$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/Job$Result;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/Job$Result;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/evernote/android/job/Job$Result;->$VALUES:[Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v0}, [Lcom/evernote/android/job/Job$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/Job$Result;

    return-object v0
.end method
