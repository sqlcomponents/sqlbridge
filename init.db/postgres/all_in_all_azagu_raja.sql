
DROP TABLE IF EXISTS all_in_all_azagu_raja;
DROP TABLE IF EXISTS all_in_all_azagu_raja_reference;


CREATE TABLE all_in_all_azagu_raja_reference (
    code VARCHAR(80) PRIMARY KEY,
    name VARCHAR(80),
    UNIQUE(name)
);


CREATE TABLE all_in_all_azagu_raja(
   id SERIAL PRIMARY KEY,
   reference_code VARCHAR(80),
   CONSTRAINT fk_code
      FOREIGN KEY(reference_code) 
	  REFERENCES all_in_all_azagu_raja_reference(code)
);