.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmgiActivateRequest"
.end annotation


# instance fields
.field public callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field public earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

.field public saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[BI[I[I)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "trace"    # I
    .param p3, "callId"    # B
    .param p4, "tmgi"    # [B
    .param p5, "priority"    # I
    .param p6, "saiList"    # [I
    .param p7, "earfcnList"    # [I

    .line 1724
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1725
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1726
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1727
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v1, p5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1728
    const/4 v0, 0x1

    invoke-static {p1, v0, p4}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$mbyteArrayToQmiArray(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1729
    invoke-static {p1, v0, p6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$mintArrayToQmiArray(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1730
    invoke-static {p1, v0, p7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$mintArrayToQmiArray(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1731
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .line 1735
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .line 1740
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x10s
        0x5s
    .end array-data
.end method
