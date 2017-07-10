.class public Lcom/google/firebase/auth/GetTokenResult;
.super Ljava/lang/Object;


# instance fields
.field private zzaiJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/GetTokenResult;->zzaiJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zzaiJ:Ljava/lang/String;

    return-object v0
.end method
