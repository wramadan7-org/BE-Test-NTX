-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id serial4 NOT NULL,
	digits varchar(155) NULL,
	"fotoUrl" varchar(255) NULL,
	"workType" varchar(100) NULL,
	"positionTitle" varchar(100) NULL,
	lat float8 NULL,
	lon float8 NULL,
	company varchar(155) NULL,
	"isLogin" bool NULL,
	"createdAt" timestamptz NOT NULL DEFAULT now(),
	"updatedAt" timestamptz NOT NULL DEFAULT now(),
	dovote bool NULL DEFAULT false,
	dosurvey bool NULL DEFAULT false,
	dofeedback bool NULL DEFAULT false,
	fullname varchar(255) NULL,
	"cuurentLeave" int4 NULL,
	CONSTRAINT users_digits_key UNIQUE (digits),
	CONSTRAINT users_pkey PRIMARY KEY (id)
);

INSERT INTO public.users ("id",digits,"fotoUrl","workType","positionTitle",lat,lon,company,"isLogin","createdAt","updatedAt",dovote,dosurvey,dofeedback,fullname,"cuurentLeave") VALUES
	 (1,'DFA','','WFO',NULL,0.0,0.0,'NTX',true,'2021-12-15 15:06:33+07','2022-12-22 21:05:32.377+07',true,true,false,'M. Daffa Quraisy',0),
	 (2,'HTA','','WFH',NULL,0.0,0.0,'NTX',true,'2021-12-15 15:06:33+07','2022-12-22 15:04:01.302+07',true,true,false,'R. Hernanta Subagya',0),
	 (3,'HFW','','WFO',NULL,0.0,0.0,'NTX',true,'2021-12-15 15:06:33.226343+07','2022-12-22 15:03:46.848+07',true,false,false,'Hafidz Wibowo',0);

-- public.surveys definition

-- Drop table

-- DROP TABLE public.surveys;

CREATE TABLE public.surveys (
	id serial4 NOT NULL,
	"values" _int4 NULL,
	"createdAt" timestamptz NOT NULL,
	"updatedAt" timestamptz NOT NULL,
	"userId" int4 NULL,
	CONSTRAINT surveys_pkey PRIMARY KEY (id)
);


-- public.surveys foreign keys

ALTER TABLE public.surveys ADD CONSTRAINT "surveys_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO public.surveys ("values","createdAt","updatedAt","userId") VALUES
	 ('{100,100,90,90,100}','2022-12-22 08:56:50.696+07','2022-12-22 08:56:50.696+07',1),
	 ('{90,100,100,80,90}','2022-12-22 09:08:50.908+07','2022-12-22 09:08:50.908+07',2),
	 ('{80,80,80,80,80}','2022-12-22 21:05:32.317+07','2022-12-22 21:05:32.317+07',3);

-- public.attackers definition

CREATE TABLE public.attackers (
  id SERIAL4 PRIMARY KEY,
  "values" jsonb NULL,
	"createdAt" timestamptz NOT NULL DEFAULT NOW(),
	"updatedAt" timestamptz NOT NULL DEFAULT NOW()
);

INSERT INTO public.attackers ("values", "createdAt", "updatedAt")
values ('[
    {
      "sourceCountry": "NL",
      "destinationCountry": "AU",
      "millisecond": 503,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.503"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 883,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.883"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 937,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.937"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "IE",
      "millisecond": 773,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.773"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 550,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.55"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 713,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.713"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "ZA",
      "millisecond": 507,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.507"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 827,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.827"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "BR",
      "millisecond": 670,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.67"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 983,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.983"
    },
    {
      "sourceCountry": "AU",
      "destinationCountry": "US",
      "millisecond": 927,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.927"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ES",
      "millisecond": 750,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.75"
    },
    {
      "sourceCountry": "AZ",
      "destinationCountry": "IE",
      "millisecond": 517,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.517"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ZA",
      "millisecond": 807,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.807"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 960,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.96"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "BH",
      "millisecond": 523,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.523"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 700,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.7"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 960,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.96"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 510,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.51"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "KR",
      "millisecond": 710,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.71"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 887,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.887"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "BR",
      "millisecond": 500,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.5"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IT",
      "millisecond": 860,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.86"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 787,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.787"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "FR",
      "millisecond": 507,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.507"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "IN",
      "millisecond": 630,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.63"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "IT",
      "millisecond": 987,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.987"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ES",
      "millisecond": 867,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.867"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 537,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.537"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SE",
      "millisecond": 997,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.997"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 680,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.68"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "HK",
      "millisecond": 647,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.647"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 710,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.71"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 737,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.737"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 527,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.527"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 880,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.88"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 793,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.793"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 673,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.673"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 797,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.797"
    },
    {
      "sourceCountry": "JP",
      "destinationCountry": null,
      "millisecond": 850,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.85"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 960,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.96"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 760,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.76"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 637,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.637"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 837,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.837"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": null,
      "millisecond": 603,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.603"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 563,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.563"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 983,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.983"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 817,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.817"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 823,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.823"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 677,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.677"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 903,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.903"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 503,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.503"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 800,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.8"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 567,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.567"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 797,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.797"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 643,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.643"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 870,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.87"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 887,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.887"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 900,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.9"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 947,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.947"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 647,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.647"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 777,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 607,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.607"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 513,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.513"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 863,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.863"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 717,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.717"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 637,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.637"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 933,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:21.933"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "GB",
      "destinationCountry": "FR",
      "millisecond": 333,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.333"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ES",
      "millisecond": 960,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.96"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ES",
      "millisecond": 227,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.227"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IE",
      "millisecond": 343,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.343"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 730,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.73"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "GB",
      "millisecond": 943,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.943"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 327,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.327"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "SE",
      "millisecond": 273,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.273"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "ZA",
      "millisecond": 150,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.15"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 637,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.637"
    },
    {
      "sourceCountry": "FR",
      "destinationCountry": "IE",
      "millisecond": 847,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.847"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "US",
      "millisecond": 143,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.143"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "JP",
      "millisecond": 187,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.187"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ZA",
      "millisecond": 910,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.91"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "US",
      "millisecond": 97,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.097"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 453,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.453"
    },
    {
      "sourceCountry": "AU",
      "destinationCountry": "CH",
      "millisecond": 630,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.63"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 123,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.123"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 477,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.477"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 987,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.987"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "JP",
      "millisecond": 593,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.593"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 127,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.127"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "BH",
      "millisecond": 113,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.113"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 373,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.373"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 977,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.977"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "JP",
      "millisecond": 430,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.43"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "IT",
      "millisecond": 683,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.683"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "AU",
      "millisecond": 133,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.133"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 807,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.807"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 287,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.287"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 993,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.993"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 690,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.69"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "GB",
      "millisecond": 867,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.867"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "US",
      "millisecond": 847,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.847"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SE",
      "millisecond": 777,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 170,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.17"
    },
    {
      "sourceCountry": "TW",
      "destinationCountry": "ZA",
      "millisecond": 183,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.183"
    },
    {
      "sourceCountry": "UA",
      "destinationCountry": "US",
      "millisecond": 883,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.883"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "IN",
      "millisecond": 157,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.157"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 270,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.27"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 630,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.63"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 487,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.487"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 763,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.763"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 727,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.727"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 967,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.967"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 780,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.78"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 110,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.11"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 757,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.757"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 200,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.2"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 377,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.377"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 310,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.31"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 233,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.233"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 150,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.15"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 783,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.783"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 367,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.367"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 147,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.147"
    },
    {
      "sourceCountry": "MC",
      "destinationCountry": null,
      "millisecond": 480,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.48"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 53,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.053"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 83,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.083"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 603,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.603"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 757,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.757"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 553,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.553"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 190,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.19"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 417,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.417"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 67,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.067"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 97,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.097"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 73,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.073"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 317,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.317"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 267,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.267"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 987,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.987"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 607,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:22.607"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 753,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.753"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 407,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.407"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "KR",
      "millisecond": 27,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.027"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "FR",
      "millisecond": 47,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.047"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "BH",
      "millisecond": 757,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.757"
    },
    {
      "sourceCountry": "AU",
      "destinationCountry": "CH",
      "millisecond": 363,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.363"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "GB",
      "millisecond": 997,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.997"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 237,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.237"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "FR",
      "millisecond": 210,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.21"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 263,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.263"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 587,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.587"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "SE",
      "millisecond": 373,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.373"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "JP",
      "millisecond": 920,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.92"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 880,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.88"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 990,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.99"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "GB",
      "millisecond": 197,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.197"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 377,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.377"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "CH",
      "millisecond": 903,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.903"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "IN",
      "millisecond": 833,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.833"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 0,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23"
    },
    {
      "sourceCountry": "TH",
      "destinationCountry": "HK",
      "millisecond": 830,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.83"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 583,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.583"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "SE",
      "millisecond": 683,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.683"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "ZA",
      "millisecond": 257,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.257"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 477,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.477"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "AE",
      "millisecond": 270,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.27"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 120,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.12"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 0,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 283,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.283"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IT",
      "millisecond": 967,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.967"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "HK",
      "millisecond": 847,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.847"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 247,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.247"
    },
    {
      "sourceCountry": "FR",
      "destinationCountry": "ID",
      "millisecond": 587,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.587"
    },
    {
      "sourceCountry": "IN",
      "destinationCountry": "US",
      "millisecond": 617,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.617"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "GB",
      "millisecond": 923,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.923"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": null,
      "millisecond": 350,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.35"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 673,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.673"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 770,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.77"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 313,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.313"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 780,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.78"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 567,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.567"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 113,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.113"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 710,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.71"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 547,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.547"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": null,
      "millisecond": 600,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.6"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 360,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.36"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 120,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.12"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 407,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.407"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 600,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.6"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 430,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.43"
    },
    {
      "sourceCountry": "MC",
      "destinationCountry": null,
      "millisecond": 287,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.287"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 997,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.997"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 427,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.427"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 913,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.913"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 940,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.94"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 943,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.943"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 300,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.3"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 687,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.687"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 437,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.437"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 550,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.55"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 143,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.143"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 50,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.05"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 130,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.13"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 203,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.203"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 550,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.55"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 77,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.077"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 767,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.767"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 453,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:23.453"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 777,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.777"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "BR",
      "millisecond": 940,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.94"
    },
    {
      "sourceCountry": "TH",
      "destinationCountry": "IN",
      "millisecond": 577,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.577"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "FR",
      "millisecond": 137,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.137"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "DE",
      "millisecond": 27,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.027"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "US",
      "millisecond": 13,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.013"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "CH",
      "millisecond": 420,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.42"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "ZA",
      "millisecond": 643,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.643"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "KR",
      "millisecond": 710,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.71"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ID",
      "millisecond": 133,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.133"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "BH",
      "millisecond": 190,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.19"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 850,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.85"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "BR",
      "millisecond": 503,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.503"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 640,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.64"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "DE",
      "millisecond": 373,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.373"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 550,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.55"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "IN",
      "millisecond": 867,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.867"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "SE",
      "millisecond": 253,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.253"
    },
    {
      "sourceCountry": "PT",
      "destinationCountry": "ZA",
      "millisecond": 277,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.277"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ZA",
      "millisecond": 490,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.49"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "SG",
      "millisecond": 820,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.82"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 380,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.38"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 927,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.927"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "US",
      "millisecond": 513,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.513"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 843,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.843"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "IE",
      "millisecond": 943,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.943"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "SE",
      "millisecond": 907,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.907"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 837,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.837"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "FR",
      "millisecond": 80,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.08"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IT",
      "millisecond": 730,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.73"
    },
    {
      "sourceCountry": "IN",
      "destinationCountry": "ID",
      "millisecond": 387,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.387"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 300,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.3"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 253,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.253"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "AE",
      "millisecond": 677,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.677"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 390,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.39"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "JP",
      "millisecond": 523,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.523"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 360,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.36"
    },
    {
      "sourceCountry": "KR",
      "destinationCountry": "ID",
      "millisecond": 490,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.49"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ZA",
      "millisecond": 877,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.877"
    },
    {
      "sourceCountry": "AU",
      "destinationCountry": "US",
      "millisecond": 893,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.893"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 960,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.96"
    },
    {
      "sourceCountry": "UA",
      "destinationCountry": null,
      "millisecond": 217,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.217"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 183,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.183"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 543,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.543"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 397,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.397"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 997,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.997"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 933,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.933"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 47,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.047"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 257,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.257"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 433,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.433"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 870,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.87"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 697,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.697"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 393,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.393"
    },
    {
      "sourceCountry": "FR",
      "destinationCountry": null,
      "millisecond": 53,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.053"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 967,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.967"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 237,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.237"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 623,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.623"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 353,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.353"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 557,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.557"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 777,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 967,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.967"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 807,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.807"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 347,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.347"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 137,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.137"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 787,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.787"
    },
    {
      "sourceCountry": "PH",
      "destinationCountry": null,
      "millisecond": 353,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.353"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 447,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.447"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 97,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.097"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 20,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.02"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 407,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:24.407"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 677,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.677"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 723,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.723"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "US",
      "millisecond": 520,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.52"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 133,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.133"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CH",
      "millisecond": 57,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.057"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SE",
      "millisecond": 863,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.863"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "ZA",
      "millisecond": 547,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.547"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 573,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.573"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "HK",
      "millisecond": 123,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.123"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 320,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.32"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "SG",
      "millisecond": 820,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.82"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 933,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.933"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 783,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.783"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 73,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.073"
    },
    {
      "sourceCountry": "IN",
      "destinationCountry": "BR",
      "millisecond": 107,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.107"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CH",
      "millisecond": 297,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.297"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 640,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.64"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "US",
      "millisecond": 417,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.417"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "JP",
      "millisecond": 243,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.243"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "IN",
      "millisecond": 913,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.913"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "ID",
      "millisecond": 497,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.497"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 427,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.427"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 637,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.637"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "HK",
      "millisecond": 427,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.427"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 73,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.073"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "CH",
      "millisecond": 50,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.05"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 13,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.013"
    },
    {
      "sourceCountry": "TR",
      "destinationCountry": "IT",
      "millisecond": 557,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.557"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 517,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.517"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "JP",
      "millisecond": 803,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.803"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CH",
      "millisecond": 160,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.16"
    },
    {
      "sourceCountry": "PL",
      "destinationCountry": "US",
      "millisecond": 650,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.65"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 347,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.347"
    },
    {
      "sourceCountry": "TW",
      "destinationCountry": "SG",
      "millisecond": 953,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.953"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 773,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.773"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 563,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.563"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 483,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.483"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IT",
      "millisecond": 417,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.417"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "AU",
      "millisecond": 160,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.16"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "AE",
      "millisecond": 507,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.507"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 970,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.97"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 267,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.267"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 190,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.19"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 430,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.43"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 73,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.073"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 763,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.763"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 363,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.363"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 707,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.707"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 157,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.157"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 780,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.78"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 817,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.817"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 550,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.55"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 183,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.183"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 637,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.637"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 177,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.177"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 937,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.937"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 550,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.55"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 810,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.81"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 13,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.013"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 333,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.333"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 97,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.097"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 107,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.107"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 710,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.71"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 410,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.41"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 773,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.773"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 517,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.517"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 450,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.45"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 180,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.18"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 677,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:25.677"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 293,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.293"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 957,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.957"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "FR",
      "millisecond": 373,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.373"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ZA",
      "millisecond": 720,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.72"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "FR",
      "millisecond": 693,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.693"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "DE",
      "millisecond": 300,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.3"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "AE",
      "millisecond": 157,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.157"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "KR",
      "millisecond": 577,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.577"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 917,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.917"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 140,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.14"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 13,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.013"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 973,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.973"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ES",
      "millisecond": 280,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.28"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "US",
      "millisecond": 830,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.83"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "SG",
      "millisecond": 367,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.367"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "CA",
      "millisecond": 593,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.593"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "BH",
      "millisecond": 33,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.033"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "HK",
      "millisecond": 497,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.497"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "KR",
      "millisecond": 43,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.043"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "GB",
      "millisecond": 850,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.85"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 287,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.287"
    },
    {
      "sourceCountry": "BE",
      "destinationCountry": "DE",
      "millisecond": 157,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.157"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 267,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.267"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "IN",
      "millisecond": 330,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.33"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 423,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.423"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 190,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.19"
    },
    {
      "sourceCountry": "TW",
      "destinationCountry": "KR",
      "millisecond": 37,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.037"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "BR",
      "millisecond": 850,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.85"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 93,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.093"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "IN",
      "millisecond": 630,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.63"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 613,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.613"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "AU",
      "millisecond": 173,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.173"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "SG",
      "millisecond": 880,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.88"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 570,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.57"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "ID",
      "millisecond": 637,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.637"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 313,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.313"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 450,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.45"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 960,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.96"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 957,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.957"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 160,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.16"
    },
    {
      "sourceCountry": "KR",
      "destinationCountry": "US",
      "millisecond": 320,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.32"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 167,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.167"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 540,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.54"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 583,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.583"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 423,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.423"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 347,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.347"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 990,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.99"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 243,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.243"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 510,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.51"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 637,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.637"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 813,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.813"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 197,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.197"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 757,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.757"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 877,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.877"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 483,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.483"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 320,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.32"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 917,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.917"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 420,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.42"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 357,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.357"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 603,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.603"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": null,
      "millisecond": 623,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.623"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 990,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.99"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 723,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.723"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 897,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.897"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 163,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.163"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 253,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.253"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 380,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.38"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 197,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:26.197"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "GB",
      "destinationCountry": "ID",
      "millisecond": 337,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.337"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SE",
      "millisecond": 7,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.007"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "JP",
      "millisecond": 587,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.587"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "IT",
      "millisecond": 173,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.173"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 590,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.59"
    },
    {
      "sourceCountry": "TH",
      "destinationCountry": "DE",
      "millisecond": 537,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.537"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "CH",
      "millisecond": 560,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.56"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "SG",
      "millisecond": 50,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.05"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "ZA",
      "millisecond": 307,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.307"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "IT",
      "millisecond": 27,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.027"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 823,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.823"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 727,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.727"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 863,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.863"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 123,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.123"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "FR",
      "millisecond": 303,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.303"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "SG",
      "millisecond": 530,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.53"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "HK",
      "millisecond": 60,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.06"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "AE",
      "millisecond": 867,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.867"
    },
    {
      "sourceCountry": "ID",
      "destinationCountry": "FR",
      "millisecond": 40,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.04"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IE",
      "millisecond": 750,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.75"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 63,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.063"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "SG",
      "millisecond": 593,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.593"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 197,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.197"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "FR",
      "millisecond": 173,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.173"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "IE",
      "millisecond": 733,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.733"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "CH",
      "millisecond": 480,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.48"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 357,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.357"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 987,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.987"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 847,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.847"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 517,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.517"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 107,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.107"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IE",
      "millisecond": 587,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.587"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 207,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.207"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ID",
      "millisecond": 673,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.673"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "US",
      "millisecond": 253,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.253"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 287,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.287"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 920,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.92"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 853,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.853"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 250,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.25"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 110,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.11"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 247,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.247"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 937,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.937"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 980,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.98"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 253,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.253"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 337,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.337"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 453,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.453"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": null,
      "millisecond": 973,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.973"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 720,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.72"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 320,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.32"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 567,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.567"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 460,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.46"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 763,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.763"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 797,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.797"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 643,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.643"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 707,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.707"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 867,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.867"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 510,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.51"
    },
    {
      "sourceCountry": "FR",
      "destinationCountry": null,
      "millisecond": 503,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.503"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 643,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.643"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 620,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.62"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 927,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.927"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 893,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.893"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 837,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.837"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 493,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.493"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 247,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.247"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 80,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.08"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 703,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.703"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 333,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.333"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 717,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:27.717"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "VN",
      "destinationCountry": "KR",
      "millisecond": 3,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.003"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 707,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.707"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 410,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.41"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 247,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.247"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 383,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.383"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 523,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.523"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 463,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.463"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 220,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.22"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "GB",
      "millisecond": 33,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.033"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 213,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.213"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "FR",
      "millisecond": 487,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.487"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 540,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.54"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": "AE",
      "millisecond": 47,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.047"
    },
    {
      "sourceCountry": "TR",
      "destinationCountry": "IT",
      "millisecond": 300,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.3"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 280,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.28"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "BR",
      "millisecond": 597,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.597"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 810,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.81"
    },
    {
      "sourceCountry": "ID",
      "destinationCountry": "AE",
      "millisecond": 907,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.907"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 20,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.02"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "IT",
      "millisecond": 777,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 957,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.957"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 850,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.85"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 500,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.5"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "AU",
      "millisecond": 493,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.493"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 973,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.973"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 807,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.807"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 267,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.267"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "JP",
      "millisecond": 847,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.847"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 193,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.193"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 407,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.407"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 83,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.083"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "CH",
      "millisecond": 810,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.81"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "SG",
      "millisecond": 343,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.343"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ID",
      "millisecond": 387,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.387"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "GB",
      "millisecond": 380,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.38"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 390,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.39"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 733,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.733"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 723,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.723"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 760,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.76"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 687,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.687"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 730,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.73"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 783,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.783"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 570,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.57"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 663,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.663"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 903,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.903"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 987,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.987"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 47,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.047"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 380,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.38"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 490,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.49"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 543,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.543"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 547,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.547"
    },
    {
      "sourceCountry": "PE",
      "destinationCountry": null,
      "millisecond": 297,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.297"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 247,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.247"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 767,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.767"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": null,
      "millisecond": 370,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.37"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 530,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.53"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 973,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.973"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 847,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.847"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 357,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.357"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 660,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.66"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 597,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.597"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 603,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.603"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 757,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.757"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 360,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.36"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 167,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.167"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 907,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.907"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 557,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.557"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 540,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.54"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 767,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:28.767"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 987,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.987"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IE",
      "millisecond": 367,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.367"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 123,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.123"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 17,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.017"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "FR",
      "millisecond": 480,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.48"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 867,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.867"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "GB",
      "millisecond": 683,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.683"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "ZA",
      "millisecond": 923,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.923"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "IN",
      "millisecond": 17,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.017"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "JP",
      "millisecond": 260,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.26"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "FR",
      "millisecond": 373,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.373"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 130,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.13"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 333,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.333"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "KR",
      "millisecond": 167,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.167"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CH",
      "millisecond": 617,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.617"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 960,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.96"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": "SE",
      "millisecond": 467,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.467"
    },
    {
      "sourceCountry": "PT",
      "destinationCountry": "GB",
      "millisecond": 437,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.437"
    },
    {
      "sourceCountry": "AE",
      "destinationCountry": "US",
      "millisecond": 770,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.77"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 993,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.993"
    },
    {
      "sourceCountry": "VN",
      "destinationCountry": "SG",
      "millisecond": 797,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.797"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 657,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.657"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "ZA",
      "millisecond": 30,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.03"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "IN",
      "millisecond": 307,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.307"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 997,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.997"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 523,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.523"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 147,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.147"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "SG",
      "millisecond": 357,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.357"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IE",
      "millisecond": 553,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.553"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 877,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.877"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "US",
      "millisecond": 597,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.597"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 447,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.447"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 583,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.583"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "JP",
      "millisecond": 150,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.15"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 707,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.707"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "IN",
      "millisecond": 723,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.723"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 857,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.857"
    },
    {
      "sourceCountry": "TW",
      "destinationCountry": "DE",
      "millisecond": 483,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.483"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "US",
      "millisecond": 883,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.883"
    },
    {
      "sourceCountry": "TH",
      "destinationCountry": "IT",
      "millisecond": 913,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.913"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 17,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.017"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 343,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.343"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 73,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.073"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 910,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.91"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 757,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.757"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 213,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.213"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 877,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.877"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 687,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.687"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 917,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.917"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 457,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.457"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 947,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.947"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 587,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.587"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 783,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.783"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 350,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.35"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 473,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.473"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 560,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.56"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 630,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.63"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 920,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.92"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 960,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.96"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 373,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.373"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 207,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.207"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 20,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.02"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 880,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.88"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 697,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.697"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 693,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.693"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 497,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.497"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 273,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.273"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 377,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:29.377"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "RU",
      "destinationCountry": "CH",
      "millisecond": 660,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.66"
    },
    {
      "sourceCountry": "KG",
      "destinationCountry": "US",
      "millisecond": 347,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.347"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 727,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.727"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 327,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.327"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "ZA",
      "millisecond": 703,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.703"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "CA",
      "millisecond": 507,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.507"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AE",
      "millisecond": 340,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.34"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "DE",
      "millisecond": 960,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.96"
    },
    {
      "sourceCountry": "RO",
      "destinationCountry": "AU",
      "millisecond": 590,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.59"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "US",
      "millisecond": 387,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.387"
    },
    {
      "sourceCountry": "LT",
      "destinationCountry": "AE",
      "millisecond": 210,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.21"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "US",
      "millisecond": 263,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.263"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "JP",
      "millisecond": 957,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.957"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 250,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.25"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "US",
      "millisecond": 217,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.217"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 597,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.597"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "ES",
      "millisecond": 607,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.607"
    },
    {
      "sourceCountry": "MX",
      "destinationCountry": "ID",
      "millisecond": 957,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.957"
    },
    {
      "sourceCountry": "SG",
      "destinationCountry": "IN",
      "millisecond": 210,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.21"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 943,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.943"
    },
    {
      "sourceCountry": "CH",
      "destinationCountry": "BR",
      "millisecond": 940,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.94"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SG",
      "millisecond": 460,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.46"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 297,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.297"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "BH",
      "millisecond": 500,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.5"
    },
    {
      "sourceCountry": "KR",
      "destinationCountry": "GB",
      "millisecond": 847,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.847"
    },
    {
      "sourceCountry": "CI",
      "destinationCountry": "IN",
      "millisecond": 147,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.147"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 433,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.433"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "HK",
      "millisecond": 40,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.04"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "BH",
      "millisecond": 170,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.17"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 520,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.52"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ZA",
      "millisecond": 210,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.21"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 837,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.837"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "BR",
      "millisecond": 377,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.377"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 470,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.47"
    },
    {
      "sourceCountry": "AU",
      "destinationCountry": "AE",
      "millisecond": 57,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.057"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": null,
      "millisecond": 440,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.44"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 187,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.187"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": null,
      "millisecond": 227,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.227"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 657,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.657"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 423,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.423"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 0,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 430,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.43"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 13,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.013"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 863,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.863"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 853,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.853"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 43,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.043"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 867,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.867"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 623,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.623"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 513,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.513"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 357,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.357"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 777,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 637,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.637"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 70,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.07"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 753,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.753"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 797,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.797"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 30,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.03"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 287,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.287"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 557,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.557"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 307,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.307"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 770,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.77"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 667,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.667"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 487,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.487"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 800,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.8"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 497,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.497"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 650,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.65"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 677,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.677"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 777,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.777"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 143,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.143"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 840,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:30.84"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP),
	('[
    {
      "sourceCountry": "US",
      "destinationCountry": "BR",
      "millisecond": 100,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.1"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "CA",
      "millisecond": 457,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.457"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "SE",
      "millisecond": 80,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.08"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "DE",
      "millisecond": 347,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.347"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "JP",
      "millisecond": 440,
      "type": "botnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.44"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 7,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.007"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "IT",
      "millisecond": 447,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.447"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "JP",
      "millisecond": 267,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.267"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "IN",
      "millisecond": 277,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.277"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "HK",
      "millisecond": 27,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.027"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 440,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.44"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "US",
      "millisecond": 397,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.397"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "GB",
      "millisecond": 233,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.233"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 50,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.05"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "IT",
      "millisecond": 240,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.24"
    },
    {
      "sourceCountry": "NL",
      "destinationCountry": "AE",
      "millisecond": 157,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.157"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "DE",
      "millisecond": 360,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.36"
    },
    {
      "sourceCountry": "HK",
      "destinationCountry": "DE",
      "millisecond": 100,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.1"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "HK",
      "millisecond": 460,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.46"
    },
    {
      "sourceCountry": "ID",
      "destinationCountry": "AE",
      "millisecond": 407,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.407"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "BH",
      "millisecond": 87,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.087"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 193,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.193"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "AU",
      "millisecond": 220,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.22"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "KR",
      "millisecond": 197,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.197"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "SG",
      "millisecond": 123,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.123"
    },
    {
      "sourceCountry": "BG",
      "destinationCountry": "SG",
      "millisecond": 467,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.467"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "GB",
      "millisecond": 27,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.027"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": "FR",
      "millisecond": 53,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.053"
    },
    {
      "sourceCountry": "CN",
      "destinationCountry": "ES",
      "millisecond": 297,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.297"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "ID",
      "millisecond": 447,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.447"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "FR",
      "millisecond": 70,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.07"
    },
    {
      "sourceCountry": "RU",
      "destinationCountry": "CA",
      "millisecond": 120,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.12"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "US",
      "millisecond": 417,
      "type": "scanners",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.417"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": "JP",
      "millisecond": 347,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.347"
    },
    {
      "sourceCountry": "UA",
      "destinationCountry": "US",
      "millisecond": 113,
      "type": "ioTBotnets",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.113"
    },
    {
      "sourceCountry": "CH",
      "destinationCountry": "CH",
      "millisecond": 143,
      "type": "intruders",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.143"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 177,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.177"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 20,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.02"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 377,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.377"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 473,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.473"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 297,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.297"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 63,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.063"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 337,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.337"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 403,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.403"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 237,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.237"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 163,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.163"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 220,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.22"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 67,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.067"
    },
    {
      "sourceCountry": "CA",
      "destinationCountry": null,
      "millisecond": 440,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.44"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 187,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.187"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 313,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.313"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 313,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.313"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 413,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.413"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 153,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.153"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 107,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.107"
    },
    {
      "sourceCountry": "BR",
      "destinationCountry": null,
      "millisecond": 107,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.107"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 360,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.36"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 197,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.197"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 310,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.31"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 360,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.36"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 187,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.187"
    },
    {
      "sourceCountry": "DE",
      "destinationCountry": null,
      "millisecond": 40,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.04"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 227,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.227"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 223,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.223"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 410,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.41"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 423,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.423"
    },
    {
      "sourceCountry": "GB",
      "destinationCountry": null,
      "millisecond": 67,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.067"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 297,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.297"
    },
    {
      "sourceCountry": "US",
      "destinationCountry": null,
      "millisecond": 310,
      "type": "webAttackers",
      "weight": 0,
      "attackTime": "2023-10-13T05:49:31.31"
    }
  ]'::jsonb,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP);